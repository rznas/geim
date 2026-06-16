<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuildSettings-maxJumpAcrossDistance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Maximum agent jump distance.

Jump-Across link generation is controlled by the Jump Distance parameter. The parameter controls what is the furthest distance that will be connected. Setting the value to 0 will disable the generation.

The trajectory of the jump-across link is defined so that the horizontal travel is more than 2*agentRadius and less than Jump Distance. In addition the landing location must not be further than voxelSize from the level of the start location.
