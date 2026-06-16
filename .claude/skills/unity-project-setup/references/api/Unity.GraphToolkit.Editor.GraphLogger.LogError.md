<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.GraphLogger.LogError.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| message | The error message to display. |
| context | Optional context object to associate with the error message. The context is typically a node in the graph that the error relates to. |

### Description

Logs an error message.

When a is provided, the system displays an error marker next to the specified object in the graph editor. The error message also appears in the Unity Console. If no context is given, the message is logged to the console only. Use the parameter to help users identify the source of the issue within the graph. Use errors for situations where Unity can not recover or proceed normally.
