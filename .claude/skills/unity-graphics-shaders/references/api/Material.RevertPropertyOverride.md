<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.RevertPropertyOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| name | Property name, e.g. "_SrcBlend". |

### Description

Removes the override on a property.

After the Editor reverts a Property override, it no longer marks that Property as overriden. That Property now inherits its value from the parent. Note that this method is Editor-only.

Additional resources: Material.IsPropertyOverriden, Material.ApplyPropertyOverride.
