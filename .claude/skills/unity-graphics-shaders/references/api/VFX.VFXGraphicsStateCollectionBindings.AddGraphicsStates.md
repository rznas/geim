<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VFXGraphicsStateCollectionBindings.AddGraphicsStates.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| graphicsStateCollection | The GraphicsStateCollection in which to add the graphics state. |
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

Generates and adds new graphics states to the collection from an array of visual effect assets.

This method creates and attempts to add graphics states by processing arrays of assets. This is a convenient way to populate the collection without constructing each GraphicsState object manually. Each graphics state is populated with data from the mesh, render state, and render pass, and sets any remaining fields to their default values. To set remaining fields to specific values instead, use AddGraphicsStatesFromReference.

 - When you provide a VisualEffectAsset array, this function scans each asset to get pairs of shaders and geometry used in the render outputs.

 For each individual pair, the function generates graphics states for all combinations of that mesh's submeshes and that material's shader passes. The generated shader variants use the set of enabled keywords for each Material and include the global shader keywords that are **currently enabled** in the active context if they are not explicitly provided. Finally, the function will not add a graphics state if an identical one already exists for a given shader variant. 

 If a list of GraphicsState objects is already available, then GraphicsStateCollection.AddGraphicsStateForVariant can instead be used to add to the collection. Additional resources: AddGraphicsStatesFromReference, CommandBuffer.BeginRenderPass.
