<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipeline.StandardRequest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Standard request type for RenderPipeline.SubmitRenderRequest.

Default render request type. Renders the active render pipeline into the given destination and specified face, mip and/or slice.

SRP Compatibility:

- URP: Renders a full URP camera stack. Only works on base cameras. To render a single camera in a stack, use UniversalRenderPipeline.SingleCameraRequest.
- HDRP: Renders an HDRP camera without Arbitrary Output Variables (AOVs).

Refer to Render requests for more information about render requests in scriptable render pipelines (SRPs).

Additional resources: RenderPipeline.SubmitRenderRequest, RenderPipeline.SupportsRenderRequest.

### Properties

| Property | Description |
| --- | --- |
| destination | RenderTexture to store the rendering result of the request. |
| face | Target Cubemap face to store the rendering result. |
| mipLevel | Target mipLevel to store the rendering output. |
| slice | Target slice to store the rendering output. |
