# Integrating TOLLER's on-device agent with Android framework

**Note:** The following instructions are specifically for AOSP Android 6.0 systems. We managed to integrate TOLLER with both emulators and physical devices (Nexus 5 and Nexus 6P). Some commands and/or code may need to be adjusted for other Android versions. Besides, you may find it more convenient to operate inside a Docker container.

We are also working on a solution that modifies apps instead of the Android framework.

## Requirements

* JDK 8+
* Latest Android SDK tools, platform tools, build tools, and `android.jar` for the target API level (e.g., 23 for Android 6.0). All these tools can be obtained from the [Android developers](https://developer.android.com/studio#downloads) website.
* `dex2oat` tool for your target Android version.
    * You can compile this tool from [Android source](https://source.android.com/setup/build/building) by yourself. It is located at `out/host/linux-x86/bin/dex2oat` for x64 Linux system.
    * Or alternatively, download our [prebuilt binaries](https://drive.google.com/drive/folders/1TsxYrUw00FgMKT1ehIV9Nw2rn4LUpNfZ) if you are using an x64 Linux system and targeting Android 6.0. Note that both `bin` and `lib64` folders need to be downloaded and placed under this directory.
* Latest [Smali & Baksmali](https://bitbucket.org/JesusFreke/smali/downloads/) tools. Or use our provided versions.
* Root your device. Emulators are rooted by default, just remember to start the emulator with the `-writable-system` argument.

## Steps

1. Extract the `/system` from the target device to `/system` on your computer. You must use `/system` instead of any other path.
    * For emulators, this can be easily done using `sudo losetup /dev/loop10 system.img && sudo mkdir /system && sudo mount -o ro /dev/loop10 /system`. Later when you are done with the instructions, you can run `sudo umount /system && sudo losetup -d /dev/loop10 && sudo rmdir /system`.
    * For physical devices, an easy way for this step is to obtain device firmware images from the device vendors and follow the aforementioned commands.
2. Run `pull-oat.sh` and `python de-oat.py` to obtain core Android framework bytecode. By default the two scripts consider only `x86` and `x86_64` architectures. You can modify them to target other architectures such as `arm`.
3. Run `dis-framework-dexs.sh` to de-assemble Android framework bytecode into Smali.
4. Compile TOLLER's on-device agent using `compile-payload.sh`. Be sure to check file paths in the script before running.
5. Add necessary TOLLER invocations in Android framework methods. Please refer to our modified Smali files in `smali-examples` (corresponding to `out/android/view/View.smali`, `out/android/widget/AdapterView.smali`, and `out_0/android/app/Activity.smali`) and search for `edu/illinois/cs/ase/ViewHandlerAnalysis` to see how `invoke-static` instructions should be inserted.
6. Run `as-framework-dexs.sh` to re-assmble Android framework bytecode.
7. Run `python gen-oat.py` to re-generate platform-specific Android framework binaries from our updated Android framework bytecode. You may want to double check the location for `dex2oat` in the script.
8. Push all generated binaries from `genoat` to the target device. If your target device is an emulator, you can simply run `push-all.sh`. Otherwise, you can refer to the script for what to do.
9. Reboot the target device so that the modified Android framework will come into effect.
    * For emulators, you may want to go to the emulator directory (usually `~/.android/avds/EMULATOR_NAME`) and run `qemu-img commit system.img.qcow2` to merge changes to the system image, so that you will not need `-writable-system` for future runs.