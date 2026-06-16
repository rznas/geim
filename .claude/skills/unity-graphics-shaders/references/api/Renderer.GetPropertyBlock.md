<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Renderer.GetPropertyBlock.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| properties | Material parameters to retrieve. |
| materialIndex | The index of the Material you want to get overridden parameters from. The index ranges from 0 to Renderer.sharedMaterials.Length-1. |

### Description

Get per-Renderer or per-Material property block.

The retrieved properties are stored in the property block passed in through "properties". If no properties are set, the property block is cleared. In either case the property block you pass in is completely overwritten.

If you provide a Material index, only the parameters of that Material are retrieved.

 Additional resources: MaterialPropertyBlock, SetPropertyBlock.
