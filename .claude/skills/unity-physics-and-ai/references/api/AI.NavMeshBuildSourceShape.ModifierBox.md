<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuildSourceShape.ModifierBox.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes a ModifierBox source for use with NavMeshBuildSource.

This shape changes the area type of the walkable surface inside the box. Because this modification happens in a voxel representation of the scene, NavMesh does not follow the outline of the box precisely. If several ModifierBoxes overlap, and have different area types, the area type with the highest index takes precedence. A ModifierBox that you set to Not Walkable takes precedence over any other ModifierBoxes, regardless of their area type. This is useful when you need to block out an area.

Additional resources: Areas and Costs.
