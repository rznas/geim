<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.SetPropertyLock.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| name | Property name, e.g. "_SrcBlend". |
| value | The desired lock state. |

### Description

Sets the lock state of a property for this material.

If a property is locked by the material, any Material Variant inheriting from this Material will be unable to change the value of the property. Note that this method is Editor-only.

Additional resources: Material.GetPropertyLock, Material.IsPropertyLockedByAncestor.
