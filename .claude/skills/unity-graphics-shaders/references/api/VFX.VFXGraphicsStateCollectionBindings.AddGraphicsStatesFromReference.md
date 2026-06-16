<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VFXGraphicsStateCollectionBindings.AddGraphicsStatesFromReference.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| graphicsStateCollection | The GraphicsStateCollection in which to add the graphics state. |
| refState | The reference GraphicsState to use as a template for initializing unspecified values. |
| visualEffectAssets | An array of VisualEffectAsset files to scan for each unique mesh and shader pairs. |
| globalKeywords | An array of GlobalKeyword objects to use in conjunction with each material's enabled keywords when generating shader variants. |
| samples | The number of samples per pixel in this rendering configuration. |
| attachments | The array of color attachments used in this rendering configuration. |
| subPasses | The array containing information of each subpass. |
| subPassIndex | The index of the active subpass in this rendering configuration. |
| depthAttachmentIndex | The index of the attachment to be used as the depth/stencil buffer for this rendering configuration. |
| shadingRateIndex | The index of the attachment to be used as the shading rate image for this rendering configuration. |

### Returns

**bool** True if at least one new graphics state was successfully added, false otherwise.

### Description

Generates and adds new graphics states from arrays of assets, using a reference graphics state to initialize unspecified values.

This function operates like AddGraphicsStates, but instead of using default values for GraphicsState fields, it copies values from the provided `refState` for any fields not determined by the input parameters. Additional resources: AddGraphicsStates, CommandBuffer.BeginRenderPass.
