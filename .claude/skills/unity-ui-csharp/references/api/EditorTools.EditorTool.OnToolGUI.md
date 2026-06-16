<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.EditorTool.OnToolGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| window | The window that is displaying the custom editor tool. |

### Description

Use this method to implement a custom editor tool.

This method is called for each window where the custom editor tool is active. If the custom editor tool is subscribed to SceneView.onSceneGUIDelegate, use this method to replace the callback. The onSceneGUIDelegate method is called for every open SceneView.
