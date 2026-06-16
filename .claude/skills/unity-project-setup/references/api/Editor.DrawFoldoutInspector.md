<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.DrawFoldoutInspector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| target | The object to display the Inspector for. |
| editor | The reference to a variable of type Editor. |

### Description

Draws the inspector GUI with a foldout header for `target`.

Unity tracks the fold status for each different object type. Unity caches the created Editor object in the `editor` variable, eliminating the need to create it repeatedly. Make sure to destroy the Editor object using Object.DestroyImmediate after you have finished using it.
