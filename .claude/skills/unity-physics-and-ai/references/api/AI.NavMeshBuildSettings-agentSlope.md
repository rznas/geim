<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuildSettings-agentSlope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum slope angle which is walkable (angle in degrees).

The valid range is 0–60 degrees. Steep slopes will be excluded from the resulting NavMesh. Please note that setting the slope higher than 45 can give artifacts due to the voxelization process - i.e. a steep slope cannot be distinguished from a wall.
