<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle-hierarchyCapacity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The transform capacity of the transform's hierarchy data structure.

Unity internally represents each transform hierarchy, i.e. a root and all it's deep children, with its own packed data structure. This data structure is resized when the number of transforms in it exceeds its capacity.

Setting the capacity to a value slightly larger than the maximum expected size can reduce memory usage and improve performance of TransformHandle.SetParent and Object.Destroy for very large hierarchies.

Additional resources: TransformHandle.hierarchyCount.
