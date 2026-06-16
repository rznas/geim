<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchCullingViewType.ShadowMap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A shadow map is requesting culling. When there is a shadow-casting Light, Unity calls the `OnPerformCulling()` callback with the `BatchCullingViewType.Light` type once, and then calls that callback with the `BatchCullingViewType.ShadowMap` type once per shadow cascade or face.
