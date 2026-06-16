<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchRendererGroup.SetPickingMaterial.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| material | Unity Material. |

### Description

Set the material that Unity uses to render object picking data using the draw commands in the Scene view.

**Note:** This function does not prevent Unity from unloading this material when you switch scenes. To prevent this, ensure that `Material.hideFlags` contains the flags HideFlags.HideAndDontSave. Additional resources: BatchCullingViewType.Picking, BatchCullingOutputDrawCommands.drawCommandPickingEntityIds
