<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Debug.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class containing methods to ease debugging while developing a game.

### Static Properties

| Property | Description |
| --- | --- |
| developerConsoleEnabled | Allows you to enable or disable the developer console. |
| developerConsoleVisible | Controls whether the development console is visible. |
| isDebugBuild | In the Build Settings dialog there is a check box called "Development Build". |
| unityLogger | Get default debug logger. |

### Static Methods

| Method | Description |
| --- | --- |
| Assert | Assert a condition and logs an error message to the Unity console on failure. |
| AssertFormat | Assert a condition and logs a formatted error message to the Unity console on failure. |
| Break | Pauses the editor. |
| CheckIntegrity | Performs an integrity check of the currently running process and return discovered errors. |
| ClearDeveloperConsole | Clears all previously printed messages, warnings, and errors from the developer console. |
| DrawLine | Draws a line between specified start and end points. |
| DrawRay | Draws a line from start to start + dir in world coordinates. |
| ExtractStackTraceNoAlloc | Populate an unmanaged buffer with the current managed call stack as a sequence of UTF-8 bytes, without allocating GC memory. Returns the number of bytes written into the buffer. |
| IsValidationLevelEnabled | Returns whether a given validation level is currently enabled. |
| Log | Logs a message to the Unity Console. |
| LogAssertion | A variant of Debug.Log that logs an assertion message to the console. |
| LogAssertionFormat | Logs a formatted assertion message to the Unity console. |
| LogError | A variant of Debug.Log that logs an error message to the console. |
| LogErrorFormat | Logs a formatted error message to the Unity console. |
| LogException | A variant of Debug.Log that logs an error message from an exception to the console. |
| LogFormat | Logs a formatted message to the Unity Console. |
| LogWarning | A variant of Debug.Log that logs a warning message to the console. |
| LogWarningFormat | Logs a formatted warning message to the Unity Console. |
| RetrieveStartupLogs | Returns any captured startup logs |
