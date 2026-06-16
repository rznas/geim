<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.GraphLogger.LogWarning.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| message | The warning message to display. |
| context | Optional context object to associate with the warning message. The context is typically a node in the graph that the warning relates to. |

### Description

Logs a warning message.

When a is provided, the system displays a warning marker next to the specified object in the graph editor. The warning message also appears in the Unity Console. If no context is given, the message is logged to the console only. Use the parameter to help users identify the source of the issue within the graph. Use warnings for situations where Unity can recover/proceed, but users may be unaware of the side effects.
