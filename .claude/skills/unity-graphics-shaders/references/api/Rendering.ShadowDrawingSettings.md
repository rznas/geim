<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShadowDrawingSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Settings for ScriptableRenderContext.DrawShadows.

This structure describes which shadow light to render (lightIndex) with what split settings (splitData).

Additional resources: ShadowSplitData.

### Properties

| Property | Description |
| --- | --- |
| batchLayerMask | Unity renders objects whose BatchFilterSettings.batchLayer value is enabled in this bit mask. |
| cullingResults | Culling results to use. |
| lightIndex | The index of the shadow-casting light to be rendered. |
| objectsFilter | Specifies the filter Unity applies to GameObjects that it renders in the shadow pass. |
| splitIndex | The split index of the shadow-casting light to be rendered. With the default value of -1, Unity increments the split index from 0 for shadow renderer lists that are created consecutively for the same light index with matching filtering and masking settings. |
| useRenderingLayerMaskTest | Set this to true to make Unity filter Renderers during shadow rendering. Unity filters Renderers based on the Rendering Layer Mask of the Renderer itself, and the Rendering Layer Mask of each shadow casting Light. |

### Constructors

| Constructor | Description |
| --- | --- |
| ShadowDrawingSettings | Create a shadow settings object. |
