<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.XRRenderPass-cullingPassIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An index that a render pipeline can pass to XRDisplaySubsystem.GetCullingParameters to obtain culling information.

Multiple render passes can share the same index. This means that the renderer only needs to cull once, and can reuse the result of the culling for all render passes that use the same index.
