<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-computeSubGroupSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Size of the compute thread group that supports efficient memory sharing on the GPU (Read Only).

The most efficient thread group size for a set of compute shader calls. This value takes synchronization and shared data into account. This value is a subset of the total workgroup size. It is also known as a "warp" or a "wavefront".

 Additional resources:ComputeShader class, supportsComputeShaders.
