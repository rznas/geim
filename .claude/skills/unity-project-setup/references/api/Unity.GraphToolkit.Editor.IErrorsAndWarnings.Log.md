<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.IErrorsAndWarnings.Log.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| message | The message to display. |
| context | Optional context object to associate with the message. The context is typically a node in the graph that the message relates to. |

### Description

Logs an informational message.

When a is provided, the system displays an info marker next to the specified object in the graph editor. The message also appears in the Unity Console. If no context is given, the message is logged to the console only. Use for communicating non-critical information.
