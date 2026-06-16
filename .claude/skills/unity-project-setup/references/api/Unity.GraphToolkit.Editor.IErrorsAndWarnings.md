<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.IErrorsAndWarnings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for a container that handles errors, warnings, and informational messages related to a graph or its elements.

Implement this interface to provide logging capabilities for graph-related components. Logged messages can optionally be associated with a specific object in the graph, which enables displaying visual markers in the UI. All messages are also forwarded to the Unity Console.

### Public Methods

| Method | Description |
| --- | --- |
| Log | Logs an informational message. |
| LogError | Logs an error message. |
| LogWarning | Logs a warning message. |
