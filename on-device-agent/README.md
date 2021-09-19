# TOLLER On-Device Agent

This folder contains the source code of TOLLER’s on-device agent classes that run within the same VM as the app under test. See `java/edu/illinois/cs/ase/` for all source files.

* `ViewHandlerAnalysis.java` contains most of the implementation (the filename has yet been updated for historic reasons). Specifically:
	* Upon being loaded into the VM, the agent starts a command server by listening on Unix abstract socket ([L70](java/edu/illinois/cs/ase/ViewHandlerAnalysis.java#L70)) and prepares to work by acquiring access to Android framework classes ([L71](java/edu/illinois/cs/ase/ViewHandlerAnalysis.java#L71)).
	* Upon new connections to the command server, the agent waits for commands from the client (see `handleConnection()` defined at [L174](java/edu/illinois/cs/ase/ViewHandlerAnalysis.java#L174)).
	* When instructed to obtain UI hierarchy ([L196](java/edu/illinois/cs/ase/ViewHandlerAnalysis.java#L196)), the agent calls `getUIs()` ([L617](java/edu/illinois/cs/ase/ViewHandlerAnalysis.java#L617)) to find the active window and recursively obtain related information (with `process()` defined at [L762](java/edu/illinois/cs/ase/ViewHandlerAnalysis.java#L762)).
	* When instructed to execute UI events ([L227](java/edu/illinois/cs/ase/ViewHandlerAnalysis.java#L227)), the agent locates the `View` object corresponding to the target UI element and invokes the corresponding event handler function [L237](java/edu/illinois/cs/ase/ViewHandlerAnalysis.java#L237) to [L372](java/edu/illinois/cs/ase/ViewHandlerAnalysis.java#L372).
	* TOLLER also supports trace recording by notifying the client upon observation of UI events. Related logistics are mainly from [L377](java/edu/illinois/cs/ase/ViewHandlerAnalysis.java#L377) to [L419](java/edu/illinois/cs/ase/ViewHandlerAnalysis.java#L419).
	* `UncaughtExceptionHandler` related logistics are from [L425](java/edu/illinois/cs/ase/ViewHandlerAnalysis.java#L425) to [L465](java/edu/illinois/cs/ase/ViewHandlerAnalysis.java#L465).
	* TOLLER supports several process options. See `ProcessConfig` (defined at [L107](java/edu/illinois/cs/ase/ViewHandlerAnalysis.java#L107)) for more details.
* `UIAutomatorHelper.java` serves as a helper class for UI event execution (with code borrowed from the Android framework source code as mentioned in the file's comments).
