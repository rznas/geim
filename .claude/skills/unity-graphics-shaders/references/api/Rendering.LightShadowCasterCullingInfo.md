<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LightShadowCasterCullingInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This structure contains the information to perform shadow caster culling for a given light.

Additional resources: ShadowCastersCullingInfos.

### Properties

| Property | Description |
| --- | --- |
| projectionType | The projection type of the shadow-casting light to be rendered. For example, directional light shadow-maps will have orthographic projection. Spot lights will usually have perspective projection, but you might want to implement orthographically-projected box-shaped spot lights in your scriptable renderer pipeline. |
| splitExclusionMask | A bitmask that represents the shadow splits in LightShadowCasterCullingInfo.splitRange Unity discards. |
| splitRange | The range of ShadowSplitData to use for this light. |
