<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Renderer.GetSharedMaterials.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| m | A list of materials to populate. |

### Description

Returns all the shared materials of this object.

Use this method instead of sharedMaterials if you control the life cycle of the list passed in and you want to avoid allocating a new array with every access.
