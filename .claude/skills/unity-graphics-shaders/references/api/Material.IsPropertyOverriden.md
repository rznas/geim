<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.IsPropertyOverriden.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| name | Property name, e.g. "_SrcBlend". |

### Returns

**bool** Returns true if the property you pass in is overriden by this material. Otherwise, returns false.

### Description

Checks whether a property is overriden by this material.

This method is Editor-only.

Additional resources: Material.ApplyPropertyOverride, Material.RevertPropertyOverride.
