<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.DrawingSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Settings for ScriptableRenderContext.DrawRenderers.

DrawingSettings describes how to sort visible objects (sortingSettings) and which shader passes to use (shaderPassName).

Additional resources: ScriptableRenderContext.DrawRenderers, ScriptableRenderContext.Cull, FilteringSettings.

OverrideMaterial vs. OverrideShader: Using the overrideMaterial parameter will override all rendered materials and their properties. The overrideShader property will force the renderers to use a different shader while preserving current material properties. Properties on the overriden material can then be accessed in the override shader. The use of override shaders is currently not supported with SRPBatcher and BatchRendererGroups. Override Shaders will have an impact on performance and should be avoided where overrideMaterial can be used. OverrideShader and OverrideMaterial can't both be used in the same drawRenderers call.

### Static Properties

| Property | Description |
| --- | --- |
| maxShaderPasses | The maxiumum number of passes that can be rendered in 1 DrawRenderers call. |

### Properties

| Property | Description |
| --- | --- |
| enableDynamicBatching | Controls whether dynamic batching is enabled. |
| enableInstancing | Controls whether instancing is enabled. |
| fallbackMaterial | Sets the Material to use for any drawers in this group that don't meet the requirements. |
| lodCrossFadeStencilMask | 32-bit stencil bits for LOD Cross Fade Dithering with Stencil type. |
| mainLightIndex | Configures what light should be used as main light. |
| overrideMaterial | Sets the Material to use for all drawers that would render in this group. |
| overrideMaterialPassIndex | Selects which pass of the override material to use. |
| overrideShader | Sets the shader to use for all drawers that would render in this group. Override shaders do not override existing material properties. |
| overrideShaderPassIndex | Selects which pass of the override shader to use. |
| perObjectData | What kind of per-object data to setup during rendering. |
| sortingSettings | How to sort objects during rendering. |

### Constructors

| Constructor | Description |
| --- | --- |
| DrawingSettings | Create a draw settings struct. |

### Public Methods

| Method | Description |
| --- | --- |
| GetShaderPassName | Get the name of the shader pass. |
| SetShaderPassName | Set the name of the shader pass. |
