<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Embree.GpuBvhBuildOptions-maxLeafSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum number of primitives allowed in a leaf node.

If this value is more than 1, the BVH builder can pack multiple triangles into a node, but it only does so when the increase preserves the traversal performance. Default value: 1.
