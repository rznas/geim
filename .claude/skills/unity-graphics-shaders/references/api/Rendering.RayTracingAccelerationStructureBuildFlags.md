<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructureBuildFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies how Unity builds the acceleration structure on the GPU.

Note that some flags might not be compatible with each other.

Additional resources: Settings, RayTracingMeshInstanceConfig, RayTracingAABBsInstanceConfig, BuildSettings.

### Properties

| Property | Description |
| --- | --- |
| None | Specify no options for the acceleration structure build. |
| PreferFastTrace | Build a high quality acceleration structure, increasing build time but maximizing ray tracing performance. |
| PreferFastBuild | Build a lower quality acceleration structure, minimizing build time but decreasing ray tracing performance. |
| MinimizeMemory | Minimize the amount of temporary memory Unity uses when it builds the acceleration structure, and minimize the size of the result. |
