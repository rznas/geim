<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShadowmaskMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The rendering mode of Shadowmask.

Set whether static shadow casters should be rendered into real-time shadow maps.

 Additional resources: QualitySettings.shadowmaskMode, QualitySettings.shadowDistance.

### Properties

| Property | Description |
| --- | --- |
| Shadowmask | Static shadow casters won't be rendered into real-time shadow maps. All shadows from static casters are handled via Shadowmasks and occlusion from Light Probes. |
| DistanceShadowmask | Static shadow casters will be rendered into real-time shadow maps. Shadowmasks and occlusion from Light Probes will only be used past the real-time shadow distance. |
