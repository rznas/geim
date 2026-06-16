<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.CreateWindow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| T | The type of the window. Must derive from EditorWindow. |
| title | The title of the created window. If this value is null, use the class name as title. |
| desiredDockNextTo | An array of EditorWindow types that the window will attempt to dock onto. |

### Description

Creates an EditorWindow of type `T`.

Creates and shows a new window and returns the instance of it.
