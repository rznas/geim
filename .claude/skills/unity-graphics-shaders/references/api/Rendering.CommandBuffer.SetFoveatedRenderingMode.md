<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetFoveatedRenderingMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| foveatedRenderingMode | The mode to set. |

### Description

Adds a command to set the mode to use for foveated rendering.

Before using this command, the scriptable render pipeline must call CommandBuffer.ConfigureFoveatedRendering. For compatibility with all device, it is recomended to call this before changing render targets because some device will not allow changes during a render pass. To know if you can call this function between rendertarget changes you can check the Rendering.FoveatedRenderingCaps.ModeChangeOnlyBeforeRenderTargetSet flag. If this flag is disabled you can also change the foveation mode between each drawcall.
