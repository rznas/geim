<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceMaterialConfig.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This structure is used by RayTracingAccelerationStructure.CullInstances function to determine which types of Materials are used by Renderers when populating the acceleration structure with ray tracing instances.

RayTracingAccelerationStructure.CullInstances function can ignore Renderers or sub-meshes that use different types of Materials as defined by this configuration. RayTracingInstanceCullingConfig parameter contains one Material configuration for alpha tested Materials and one for transparent Materials. If a Material is not classified as transparent or alpha tested then is considered being opaque.

The Material type is defined by testing one of the following properties:

- The render queue value used by the Shader or the one overriden by the Material using the Shader (see Shader.renderQueue and Material.renderQueue). The value of the render queue has to be between renderQueueLowerBound and renderQueueUpperBound interval including these two values.
- An optional Shader Tag (e.g. Tags { "RenderType"="Transparent" }). The Shader used by a Material has to contain a Shader Tag from optionalShaderTags array.
- An optional Shader Keyword (e.g. #pragma shader_feature_local _ALPHATEST_ON). A Shader Keyword from optionalShaderKeywords array has to be enabled at the time when RayTracingAccelerationStructure.CullInstances is called.

Additional resources: RayTracingInstanceCullingTest, RayTracingAccelerationStructure.

### Properties

| Property | Description |
| --- | --- |
| optionalShaderKeywords | An array of Shader Keyword names used to determine the Material type. |
| optionalShaderTags | An array of Shader Tags used to determine the Material type. |
| renderQueueLowerBound | The lower limit of a render queue interval. |
| renderQueueUpperBound | The upper limit of a render queue interval. |
