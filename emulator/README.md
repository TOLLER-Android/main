# Android emulator used in our experiments

We modified the official Android 6.0 emulator image to integrate TOLLER and our re-compiled version of [MiniTrace](https://bitbucket.org/txgu/mini-tracing-art6/src/minitracing/).

## To use our prebuilt emulator image

0. Install the latest Android SDK and choose to download the Android 6.0 (API 23) x64 Google APIs image. Make sure that `$ANDROID_SDK/system-images/android-23/google_apis/x86_64/system.img` exists, where `$ANDROID_SDK` points to the root path of your installed Android SDK.
1. Download `system.img.bz2` from [here](https://github.com/TOLLER-Android/main/releases/download/emulator-image/system.img.bz2).
2. Uncompress `system.img.bz2` using `bunzip2` and replace the `system.img` found in Step 0. You might want to backup the original `system.img` first.
3. You can now create new emulators using Android SDK's emulator manager.

## Specifications of emulators in our experiments

* 4 *dedicated* CPU cores.
* Host-accelerated graphics. Important for keeping industrial apps running without using up CPUs.
* 2 GiB of RAM. Emulator would refuse to start with more RAM.
* 2 GiB of internal storage + 512 MiB of SD card.
* 720p screen resolution.

## Efforts for minimizing the mutual influence among running emulators

* All emulator data files are stored on a RAM disk, achieved with `tmpfs` on Linux.
* To make dedicated CPU cores, we set Linux kernel's `isolcpus` parameter to reserve a number of CPU cores and use [this script](https://gist.github.com/ms1995/59721f3b214825fd2d04610dc96177a1) to allocate reserved CPU cores for emulator processes.
* Also given that hyper threading is enabled on our server, we make sure that both logical cores over the same physical core belong to the same emulator.