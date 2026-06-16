<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.ComputeDetailInstanceTransforms.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| patchX | The x index of the patch. |
| patchY | The y index of the patch. |
| layer | The prototype index. |
| density | The density setting of the detail. |
| bounds | Returns the bounds of the detail objects. |

### Description

This function computes and returns an array of detail object transforms for the specified patch and the specified prototype. You can use this function to retrieve the exact same transform data the Unity engine uses for detail rendering.

Additional resources: DetailInstanceTransform.
