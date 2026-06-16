<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.WaitOnGPUFence.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| fence | The GPUFence that the GPU will be instructed to wait upon. |
| stage | On some platforms there is a significant gap between the vertex processing completing and the pixel processing completing for a given draw call. This parameter allows for requested wait to be before the next items vertex or pixel processing begins. Some platforms can not differentiate between the start of vertex and pixel processing, these platforms will wait before the next items vertex processing. If a compute shader dispatch is the next item to be submitted then this parameter is ignored. |

### Description

This functionality is deprecated, and should no longer be used. Please use CommandBuffer.WaitOnAsyncGraphicsFence.
