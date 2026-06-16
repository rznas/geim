<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintTool_1.OnRenderBrushPreview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrain | Active Terrain object. |
| editContext | Interface for communication between Editor and Paint tools. |

### Description

Use this method to implement custom tool preview and UI behavior that will only render while the mouse is within the SceneView bounds or while you're actively using this tool.

Unity calls this method when the mouse is within the SceneView viewport bounds, and the EditorGUIUtility.hotControl is set to 0 or to the Terrain control ID provided by the IOnSceneGUI context instance. This is usually when no other tools are active, or when you're actively using this tool.

 Additional resources: Editor.OnSceneGUI, SceneView, TerrainPaintTool_1.OnSceneGUI, EditorGUIUtility.hotControl, GUIUtility.hotControl.
