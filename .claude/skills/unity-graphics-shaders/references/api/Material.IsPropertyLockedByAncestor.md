<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.IsPropertyLockedByAncestor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| name | Property name, e.g. "_SrcBlend". |

### Returns

**bool** Returns true if the property you pass in is locked by any of ancestor of this material. Otherwise, returns false.

### Description

Checks whether a property is locked by any of ancestor of this material.

If a property is locked by an ancestor of the material, any change to the property on this Material will not have any effect until the property is unlocked by the ancestor. Note that this method is Editor-only.

Additional resources: Material.SetPropertyLock.
