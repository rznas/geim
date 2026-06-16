<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Renderer.SetPropertyBlock.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| properties | Property block with values you want to override. |
| materialIndex | The index of the Material you want to override the parameters of. The index ranges from 0 to Renderer.sharedMaterials.Length-1. |

### Description

Lets you set or clear per-renderer or per-material parameter overrides.

This is recommended when only a few properties of a Material are different per object. This is more memory efficient than having one complete distinct Material per object.

You can also provide a Material index (from 0 to Renderer.materials.Length-1). In this case, only parameters of that Material are set. If there is both a per-renderer and a per-material block, only the per-Material block is used.

To disable any of per-Renderer or per-Material overrides, pass null as the property’s argument.

Additional resources: MaterialPropertyBlock, GetPropertyBlock.
