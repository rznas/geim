<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.CreateCachedEditor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The object the editor is tracking. |
| editorType | The requested editor type. Set to null for the default editor for the object. |
| previousEditor | The previous editor for the object. After returning from CreateCachedEditor `previousEditor` is an editor for the `targetObject` or `targetObjects`. |
| objects | The objects the editor is tracking. |

### Description

On return `previousEditor` is an editor for `targetObject` or `targetObjects`. The function either returns if the editor is already tracking the objects, or destroys the previous editor and creates a new one.

By default, the editor with a matching CustomEditor attribute is created. If an editorType is specified, an editor of that type is created instead. Use this if you have created multiple custom editors where each editor shows different properties of the object. previousEditor will be NULL if `objects` are of different types or if no approprate editor was found.
