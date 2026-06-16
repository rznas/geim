<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchCullingFlags.CullLightmappedShadowCasters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This culling invocation should cull static objects whose shadows have been baked in lightmaps.

This flag will only be set when BatchCullingContext.viewType is BatchCullingViewType.Light, for lights that use a mixture of baked and dynamic shadows. When set, the implementation of the OnPerformCulling callback should skip renderers that affect lightmaps, adding only dynamic shadow casters to the BatchCullingOutput.
