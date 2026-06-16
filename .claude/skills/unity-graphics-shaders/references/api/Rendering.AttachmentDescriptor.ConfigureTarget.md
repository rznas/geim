<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.AttachmentDescriptor.ConfigureTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tgt | The surface to use as the backing storage for this AttachmentDescriptor. |
| loadExistingContents | Whether to read in the existing contents of the surface when the RenderPass starts. |
| storeResults | Whether to store the rendering results of the attachment when the RenderPass ends. |

### Description

Binds this AttachmentDescriptor to the given target surface.

This method sets the backing storage of this AttachmentDescriptor to the given target surface.

If loadExistingContents is true, changes loadAction to RenderBufferStoreAction.Load unless the load action is already set to RenderBufferStoreAction.Clear, in which case this parameter is ignored.

If `storeResults` is true, changes storeAction to either RenderBufferStoreAction.Store or RenderBufferStoreAction.StoreAndResolve depending on whether the `resolveAttachment` was configured or not.

Note: If you call both ConfigureResolveTarget with `storeResults` set to `true` and `ConfigureTarget`, Unity stores both the resolved and unresolved MSAA surfaces respectively in `resolveTarget` and `loadStoreTarget`. This means Unity writes more data to memory.
