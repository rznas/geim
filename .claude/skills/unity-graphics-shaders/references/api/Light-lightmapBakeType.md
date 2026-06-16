<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Light-lightmapBakeType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This property describes what part of a light's contribution can be baked (Editor only).

If this setting is LightmapBakeType.Realtime, realtime indirect GI can be precomputed, and then updated at runtime. If this setting is LightmapBakeType.Baked, this light will be baked and won't be evaluated at runtime. If this setting is LightmapBakeType.Mixed, this light will be a composition of baked and run time evaluation based on the selected Mixed Light mode in the lighting window's Settings tab.

This property is only exposed to Editor scripts. It is not exposed during Play mode.
