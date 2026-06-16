<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.AttachmentDescriptor.ConfigureResolveTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tgt | The target surface to receive the MSAA-resolved pixels. |

### Description

When the renderpass that uses this attachment ends, resolve the MSAA surface into the given target.

Changes storeAction to either RenderBufferStoreAction.Resolve or RenderBufferStoreAction.StoreAndResolve depending on whether ConfigureTarget has also been called. The target surface format must match the format given in the constructor, and the dimensions of the target surface must match the values given in RenderPass constructor. The target surface must not have MSAA enabled.

 Note: If you call both `ConfigureResolveTarget` with `storeResults` set to `true` and ConfigureTarget, Unity stores both the resolved and unresolved MSAA surfaces respectively in `resolveTarget` and `loadStoreTarget`. This means Unity writes more data to memory.
