## About

This repository contains artifacts for **[An Infrastructure Approach to Improving Effectiveness of Android UI Testing Tools](https://doi.org/10.1145/3460319.3464828)**, published at ISSTA 2021.

The name of *TOLLER* comes from [here](https://en.wikipedia.org/wiki/Nova_Scotia_Duck_Tolling_Retriever).

## Contents

We assume that you are using a *Unix-like environment* throughout this guide. All experiments were conducted on Ubuntu 16.04.

### Source code and integration instructions of TOLLER

See [on-device-agent/](on-device-agent/) for the source code of TOLLER's on-device agent.
See [here](agent-build/) for integration instructions.
To get started quickly, consider using our prebuilt Android emulator image below.

### Android emulator used in our experiments

See [emulator/](emulator/) for more details.

### Using TOLLER

See [TOLLER Usages](USAGES.md) for more details. A trace recorder that works with TOLLER is available [here](https://github.com/VET-UI-Testing/test-recorder) (note that it's not used in the TOLLER paper).

### Useful scripts from our experiments

See [useful-scripts/](useful-scripts/). The following utilities should have been installed:

* aapt (from Android SDK build tools)
* adb (from Android SDK platform tools)
* md5sum
* timeout
* Python 2 & 3
* GNU screen

To start testing, refer to the following command:

```bash
$ cd useful-scripts
$ bash auto-test-wrapper.sh {APP_ID} {APK_PATH} {TOOL_ID} {RUN_ID} [OPTIONAL_LOGIN_PY_SCRIPT]
```

`APP_ID` and `RUN_ID` are set by you. Make sure that `useful-scripts/run-all-{TOOL_ID}.sh` exists. `TOOL_ID` is in the format of `{TOOL_NAME}-{VARIANT}` (e.g., `chimp-original`). You can specify an auto-login Python script using `OPTIONAL_LOGIN_PY_SCRIPT`, which will be executed on the computer after app launches and before testing starts. You also need to set the environment variable `ANDROID_SERIAL` if there are multiple devices connected.

You should see a folder named `test-logs` in the root directory of this repo after running the command. Within this folder, you should see a new folder named `{TOOL_ID}-{APP_ID}-{RUN_ID}`, where all experiment logs are placed.

### Original and modified versions of testing tools

See [test-tools/](test-tools/).

### Installation packages of apps involved in experiments

Available [here](https://drive.google.com/drive/folders/1xyQAiqbF48gG047MEoTDL_teIR2GRbCN).

### Raw experiment data

See [here](https://drive.google.com/drive/folders/1sX9zEHlSgRgq80hDPr_LfYE_RHpOGP_u) for raw experimental data.
Specifically, each Bzipped tarball corresponds to one run, with filename in the form of `{TOOL_NAME}-{APP_NAME}-{RUN_ID}.tar.bz2`.

* There are 12 different values for `TOOL_NAME`, corresponding to the 12 versions of tools shown in our paper. For tool names ending with `enhanced`, they correspond to TOLLER-enhanced tool versions.
* There are 15 different values for `APP_NAME`, corresponding to the 15 apps that we use for evaluation.
* There are 4 different values for `RUN_ID`: `prof`, `1`, `2`, and `3`. `prof` indicates that the run is profiled to collect time usage statistics, while the rest correspond to the three runs for each pair of tool variant and app.

Within tarballs the format is explained as follows:

*  `crash.log`: Android logcat entries corresponding to the app's crash logs.
*  `tool.log`: Logs from the testing tool.
* `minitrace/cov-{TIMESTAMP}.log`: Coverage information from [MiniTrace](http://gutianxiao.com/ape/install-mini-tracing) throughout the test run, collected periodically.
* `adb-timer.log`: All ADB commands invoked by the testing tool along with their time usages in milliseconds.
* `logcat-toller.log`: All logs produced by TOLLER, which include time usages for UI capturing and event execution.
* `python-timer.log`: Python invocations by the testing tool along with their time usages in milliseconds. Only exists for Stoat versions in order to measure the end-to-end time usages of event execution (Stoat wraps all event execution related logistics in Python scripts and calls them during testing).

## Contact

Please direct your questions to [Wenyu Wang](mailto:wenyu2@illinois.edu).
