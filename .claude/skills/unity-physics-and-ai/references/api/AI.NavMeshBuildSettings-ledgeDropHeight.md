<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuildSettings-ledgeDropHeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Maximum agent drop height.

Drop-Down link generation is controlled by the Drop Height parameter. The parameter controls what is the highest drop that will be connected, setting the value to 0 will disable the generation.

The trajectory of the drop-down link is defined so that the horizontal travel is: 2*agentRadius + 4*voxelSize. That is, the drop will land just beyond the edge of the platform. In addition the vertical travel needs to be more than bake settings’ Step Height (otherwise we could just step down) and less than Drop Height. The adjustment by voxel size is done so that any round off errors during voxelization does not prevent the links being generated. You should set the Drop Height to a bit larger value than what you measure in your level, so that the links will connect properly.
