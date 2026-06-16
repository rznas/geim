<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-supportsStoreAndResolveAction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This property is true if the graphics API of the target build platform takes RenderBufferStoreAction.StoreAndResolve into account, false if otherwise.

Use this property to check if RenderBufferStoreAction.StoreAndResolve results in GPU storing the multisampled render target content.

If false, the RenderBufferStoreAction.StoreAndResolve store actions fall back to RenderBufferStoreAction.Resolve.

Use this property to ensure that any multisampled render target content is stored and can be loaded correctly by any following RenderBufferLoadAction.Load load action.
