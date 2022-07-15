# TOLLER Usages

## Connecting to TOLLER's on-device agent

After starting the target app on a TOLLER-integrated device, you can establish connections to TOLLER's in-app agent and send commands to control or obtain information from TOLLER. A simple way to do this (mainly taken from [`check-app-uid.sh`](useful-scripts/check-app-uid.sh)):

1. First, find out which UID the target app is using. A quick way to do this:

    ```bash
    $ adb shell stat -c '%U' "/data/data/${APP_PACKAGE_NAME}" | tr -d '[:space:]' | xargs adb shell id -u | tr -d '[:space:]'
    ```

2. Then, use ADB to forward TOLLER's bound abstract Unix socket to the computer for ease of use. You can run:

    ```bash
    # CTRL_PORT is an arbitrary free port number.
    $ adb forward "tcp:${CTRL_PORT}" "localabstract:edu.illinois.cs.ase.uianalyzer.p${TEST_APP_UID}"
    ```

3. Connect to `CTRL_PORT` using `telnet`:

    ```bash
    $ telnet 127.0.0.1:${CTRL_PORT}
    ```

    You can programmatically control TOLLER using standard socket communication mechanism. See [Chimp's source code](test-tools/chimp/main-chimp-enhanced.py) for how to do this.

Now you can start sending commands. After typing each command, press Enter to start execution. If a command has return value, it will be sent back in a new line.

## Available TOLLER commands

* `info`: Returns a serialized JSON object containing current configuration values.
* `run`: Capture all screen contents of the app. Returns a serialized JSON array of JSON objects, each corresponding to the UI hierarchy of a window. Check the `focus` field to see which UI hierarchy corresponds to the currently active window.
* `act ACTION_TYPE VHASH [ACTION_ARGS..]`: Execute the specified action on the UI element specified by `VHASH`. Only usable after `run` has been executed. `VHASH` can be obtained from the UI hierarchy (see the `hash` field in the JSON object of each UI element). Supported `ACTION_TYPE`s and their corresponding `ACTION_ARGS` (if any):

  - `en`/`dis`: Enable/disable the UI element.
  - `clk`/`lclk`/`cclk`: Tap/long-click/context-click the UI element.
  - `tdown`/`tmove`/`tup`: Touch down/move/up upon the UI element. Must specify the screen position through two numerical arguments, corresponding to the X/Y position. Example: `act tdown VHASH 100 200`.
  - `text`: Set the text value of the UI element, which must be an instance of `android.widget.TextView` or its subclass. Must specify one Base64-encoded textual argument, corresponding to the text value to be set.
  - `scroll`: Scroll the UI element. Must provide two enumerative arguments: the first specifies which axis to scroll in, `v`(erticle)/`h`(orizontal), while the second specifies which direction to scroll to, `b`(egining)/`e`(nding).

* `trace`: Start monitoring UI actions and UI updates on the target app. A trace recorder that works with TOLLER is available [here](https://github.com/VET-UI-Testing/test-recorder). *This command is not used in the TOLLER paper.* Related information will be continuously sent in the current connection line-by-line in the format of `[TIMESTAMP][TAG]VHASH/EXTRA_INFO`. Specifically, depending on the value of `TAG`:
  - `VA`: There is a captured UI action on the UI element specified by `VHASH`. `EXTRA_INFO` will start with an integer showing the type of the update:

    * 0: click
    * 1: long click
    * 2: touch
    * 3: context click
    * 7: menu click

    For touch events, `EXTRA_INFO` additionally includes the type of the touch event (`ACTION_UP` or `ACTION_DOWN`, note that `ACTION_MOVE` events are filtered out to improve performance), being the second integer separated by `/`.
  - `BK`: The Back button is observed to be pressed. `VHASH` will be -1, and `EXTRA_INFO` will be empty.
  - `SC`: There is an accessibility state update on the UI element specified by `VHASH`. `EXTRA_INFO` will be a single integer showing the type of the update.
  - `AE`: There is an accessibility event on the UI element. `EXTRA_INFO` will be a single integer showing the type of the event.

  Note that for `VA` and `BK`, their context UI hierarchies will also be reported in the subsequent line, in the format of `[TIMESTAMP]SERIALIZED_SCREEN_CONTENTS`. These UI hierarchies are guaranteed to be taken right before the execution of the corresponding event handlers.

  Also note that only one connection is allowed to receive updates at one time--if another connection already started monitoring, running this command in the current connection has no effect unless that connection terminates.
* `vis_on`/`vis_off`: Controls whether only visible UI elements are included in the UI hierarchies. Default: ON.
* `crash_expose`/`crash_hide`: Starts/stops the task that monitors the app's `UncaughtExceptionHandler` and enforces the system default value. Useful for exposing crash details to Logcat on industrial apps, which might suppress these logs due to privacy or confidentiality concerns. The task is not started by default.
* `toller_exception_expose`/`toller_exception_hide`: Controls whether TOLLER-related exception details will be sent to Logcat. Useful to avoid confusions with app exceptions. Default: HIDE.
* `focused_only_on`/`focused_only_off`: Controls whether UI hierarchies of only focused windows will be returned. Default: ON.
* `a11y_info_on`/`a11y_info_off`: Controls whether additional accessibility properties (e.g., isCheckable) will be reported for each UI element. Might slow down UI hierarchy capturing considerably. Default: OFF.
* `cap_on_main_thread_on`/`cap_on_main_thread_off`: Controls whether UI hierarchy capturing is performed on the app's main/UI thread. If this option is turned off, the captured UI hierarchies might suffer from concurrent access issues. Default: ON.
* `cache_result_on`/`cache_result_off`: Controls whether captured UI hierarchies will be cached and reused when no UI update is observed. Default: OFF.
* `report_a11y_state_change_on`/`report_a11y_state_change_off`: Controls whether accessibility state changes will be reported in the monitoring mode. Default: ON.
* `report_a11y_event_on`/`report_a11y_event_off`: Controls whether accessibility events will be reported in the monitoring mode. Default: OFF.
* `a11y_event_min_intv`: Set the minimal interval (in milliseconds) between two consecutively reported accessibility state changes or events. Default: 100.

## Format of UI hierarchies

Each JSON object corresponds to a UI element. Child elements are stored as JSON arrays in the `ch` field. For other fields:

- `act_id` denotes Activity ID.
- `en`: whether the UI element is enabled.
- `vclk`, `vlclk`, `vcclk`: class names of short click handlers, long click handlers, and context click handlers, respectively. If one field is not present for some object, the corresponding UI element does not respond to the corresponding event.
- `bound`: UI element boundary.
- `class`: Class name of the type of the UI element.
- `ucls`: Unified class name, must be a super class of `android.view.View`, either starts with `android.widget.` or is equal to `android.webkit.WebView`. Might not exist in some cases.
- `id`: Resolved resource ID in strings if the UI element has one.
- `idn`: Resource ID in numbers, `-1` if the UI element does not have an associated resource ID.
- `hash`: Internal unique representation of the object supporting the corresponding UI element in the app's internal UI data structures.

When additional accessibility properties are set to be reported (using `a11y_info_on`), these fields might also appear for each UI element:

- `cl`: isClickable
- `lcl`: isLongClickable
- `ccl`: isContextClickable
- `ck`: isCheckable
- `ckd`: isChecked
- `fc`: isFocusable
- `fcd`: isFocused
- `pw`: isPassword
- `sel`: isSelected

Each field appears only when its value is `true`.

Note that it is the app itself who decides on the values of these fields, and it is possible to draw inconsistent conclusions based on these and other TOLLER fields (e.g., `cl` does not exist but `vclk` exists--the app might want to protect itself from robot users).
