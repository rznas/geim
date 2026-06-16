<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneView-duringSceneGui.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The Scene view invoking this callback. |

### Description

Subscribe to this event to receive a callback whenever the Scene view calls the OnGUI method.

Use this event to implement custom handles and user interface. If you want to draw elements in the Scene view, for instance by using `Graphics.DrawMeshNow`, only do so during EventType.Repaint.
