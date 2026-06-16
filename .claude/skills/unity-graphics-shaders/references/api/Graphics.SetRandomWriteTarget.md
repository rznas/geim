<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.SetRandomWriteTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the random write target. |
| uav | Buffer or texture to set as the write target. |
| preserveCounterValue | Whether to leave the append/consume counter value unchanged. |

### Description

Set random write target for Shader Model 4.5 level pixel shaders.

Shader Model 4.5 and above level pixel shaders can write into arbitrary locations of some textures and buffers, called "unordered access views" (UAV) in UsingDX11GL3Features. These "random write" targets are set similarly to how multiple render targets are set. You can either use a RenderTexture with `enableRandomWrite` flag set, or a ComputeBuffer as target.

Offset the index value given to `SetRandomWriteTarget` by adding the number of render targets used. This value might not correspond exactly to the fixed register index set in the shaders as the UAV indexing value can vary between different platforms. Refer to the platform-specific documentation for details of these differences. On DX11, the first valid UAV index is the number of active render targets, so in the common case of a single render target, the UAV indexing will start from 1. Platforms using automatically translated HLSL shaders will match this behavior, however, with hand-written GLSL shaders the indexes will match the bindings.

When setting a ComputeBuffer, the `preserveCounterValue` parameter indicates whether to leave the counter value unchanged, or reset it to 0 (the default behaviour).

The targets stay set until you manually clear them with ClearRandomWriteTargets. It is best practice to call ClearRandomWriteTargets after your rendering is complete. If you do not do this, rendering issues can occur and some built-in Unity rendering passes may crash.

Additional resources: RenderTexture.enableRandomWrite, ComputeBuffer, ComputeBuffer.SetCounterValue, UsingDX11GL3Features.
