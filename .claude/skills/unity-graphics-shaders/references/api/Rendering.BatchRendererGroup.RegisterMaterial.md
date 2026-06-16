<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchRendererGroup.RegisterMaterial.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| material | Unity Material. |

### Returns

**BatchMaterialID** BatchRendererGroup Material ID.

### Description

Registers a Material in `BatchRendererGroup` and returns its `BatchMaterialID`. Each registration of a specific Material increases its number of owners by 1.
