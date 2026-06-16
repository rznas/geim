<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.IsPropertyLocked.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| name | Property name, e.g. "_SrcBlend". |

### Returns

**bool** Returns true if the property you pass in is locked by this material. Otherwise, returns false.

### Description

Checks whether a property is locked by this material.

If a property is locked by the material, any Material Variant inheriting from this Material will be unable to change the value of the property. If a children material overrides a locked value, the override is stored in the children but won't have any effect until the property is unlocked.

Note that this method is Editor-only.

Additional resources: Material.SetPropertyLock.
