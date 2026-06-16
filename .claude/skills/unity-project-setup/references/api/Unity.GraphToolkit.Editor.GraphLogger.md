<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.GraphLogger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides methods for logging messages, warnings, and errors associated with a graph.

`GraphLogger` integrates with the Unity Console to display logs relevant to graph operations. When a context is provided, the message is also visually represented in the graph editor using appropriate markers (error, warning, or info). Console messages are only shown if the graph editor for the corresponding graph is currently open. If the editor is closed, the logs will not appear in the Unity Console.

### Public Methods

| Method | Description |
| --- | --- |
| Log | Logs an informational message. |
| LogError | Logs an error message. |
| LogWarning | Logs a warning message. |
