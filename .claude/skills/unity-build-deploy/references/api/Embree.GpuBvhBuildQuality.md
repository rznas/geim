<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Embree.GpuBvhBuildQuality.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

BVH build quality.

The quality levels represent a trade-off between acceleration structure build performance and ray tracing performance. The slower the acceleration structure build speed, the higher the runtime ray tracing performance is.

### Properties

| Property | Description |
| --- | --- |
| Low | Faster build time, slower ray tracing performance. Can be beneficial for dynamic scenes. |
| Medium | This level balances the build time and ray tracing performance. |
| High | Highest possible ray tracing performance, slowest build time. This quality level uses spatial splits when enabled. |
