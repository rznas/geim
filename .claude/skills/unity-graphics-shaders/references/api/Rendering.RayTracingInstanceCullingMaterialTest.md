<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceCullingMaterialTest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This structure is used by RayTracingAccelerationStructure.CullInstances function to avoid adding Renderers to the acceleration structure or to ignore individual sub-meshes in a Mesh based on Shaders used by Materials when building the acceleration structure.

The Shader Tags and Shader Pass names defined in the Shader used by a Material are part of the test. The test passes if the following conditions are met:

- If deniedShaderPasses array is empty or the Shader used by a Material doesn’t contain Shader Passes from the array.
- If requiredShaderTags array is empty or the Shader used by a Material contains one of the Shader Tags from the array.

Additional resources: RayTracingAccelerationStructure.

### Properties

| Property | Description |
| --- | --- |
| deniedShaderPasses | An array of Shader Pass names used by RayTracingAccelerationStructure.CullInstances to ignore Renderers or individual sub-meshes. |
| requiredShaderTags | An array of Shader Tags used by RayTracingAccelerationStructure.CullInstances to ignore Renderers or individual sub-meshes. |
