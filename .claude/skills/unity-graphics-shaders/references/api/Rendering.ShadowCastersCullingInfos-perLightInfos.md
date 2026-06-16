<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShadowCastersCullingInfos-perLightInfos.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array of LightShadowCasterCullingInfo.

Each entry in this array is associated with the VisibleLight at the same position in the array CullingResults.visibleLights. Therefore, both arrays must have the same size. The LightShadowCasterCullingInfo.splitRange of each entry describes a range in the array ShadowCastersCullingInfos.splitBuffer. An entry with LightShadowCasterCullingInfo.splitRange set to (0,0) will cause shadow casters culling and shadow maps rendering to be skipped for this light.
