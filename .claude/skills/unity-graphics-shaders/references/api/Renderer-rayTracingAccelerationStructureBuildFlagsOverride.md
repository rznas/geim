<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Renderer-rayTracingAccelerationStructureBuildFlagsOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether to override the default build flags specified when creating a RayTracingAccelerationStructure.

If you set this value to `true`, Unity uses Renderer.rayTracingAccelerationStructureBuildFlags when it builds the acceleration structure associated with this renderer.

If you set this value to false (default) and if Renderer.rayTracingMode is RayTracingMode.DynamicGeometry then Unity uses RayTracingAccelerationStructure.Settings.buildFlagsDynamicGeometries value as build flags, otherwise RayTracingAccelerationStructure.Settings.buildFlagsStaticGeometries is used.

Additional resources: RayTracingAccelerationStructure.Build, RayTracingAccelerationStructure.CullInstances, SystemInfo.supportsRayTracing.
