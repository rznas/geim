<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.Graph.OnGraphChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| graphLogger | The GraphLogger that receives any errors or warnings related to the graph. |

### Description

Called after the graph has changed.

Unity calls this method after any change to the graph. Override it to validate the graph's integrity and report issues using the provided GraphLogger. Use this method to detect invalid configurations, highlight issues in the editor, or provide user feedback. Do not modify the graph within this method, as it may cause instability or recursive updates.
