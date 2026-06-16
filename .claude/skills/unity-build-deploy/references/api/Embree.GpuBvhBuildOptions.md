<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Embree.GpuBvhBuildOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for bounding volume hierarchy (BVH) build.

### Properties

| Property | Description |
| --- | --- |
| allowPrimitiveSplits | With this option enabled, Unity performs spatial splits. This increases the memory footprint, but the resulting BVH makes the ray tracing stage faster. |
| isTopLevel | With this option enabled, Unity builds a top level BVH (for instances). When disabled, it builds a bottom level BVH (for a Mesh). |
| maxLeafSize | The maximum number of primitives allowed in a leaf node. |
| minLeafSize | The minimum number of primitives allowed in a leaf node. |
| quality | BVH build quality. |
