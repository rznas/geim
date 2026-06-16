<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.ApplyPropertyOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| destination | The Material to which the Editor applies the override. |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| name | Property name, e.g. "_SrcBlend". |
| recordUndo | Wheter the editor should record an undo operation for this action. |

### Description

Applies an override associated with a Material Variant to a target.

Sets the value of a property of this Material on a destination Material. The destination material must be an ancestor of this Material. After you apply an override, the Editor no longer marks the associated Property as overriden, and discards any change of the property on ancestors of this Material up to the destination Material. Note that this method is Editor-only.

Additional resources: Material.IsChildOf, Material.IsPropertyOverriden, Material.RevertPropertyOverride.
