<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuildSettings.ValidationReport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildBounds | Describes the volume to build NavMesh for. |

### Returns

**string[]** The list of violated constraints.

### Description

Validates the properties of NavMeshBuildSettings.

Returns a string of violated constraints. - and suggestions for changes for the current values in the build settings and the provided bounds for building the NavMesh.

An empty array is returned if all internal constraints are satisfied.

Some of the settings which you can specify in the NavMeshBuildSettings struct are coupled to each other, meaning there are constraints on the values based on other values. For example, it’s not valid for agentClimb to be larger than agentHeight. Another invalid case is when the vertical size of the buildBounds exceeds the height of 65535 voxel units.

You can use this function to check if the values in NavMeshBuildSettings violate any of the constraints, before starting the NavMesh building process.

Ignoring the violated constraints might give unexpected results when building a NavMesh, but will still produce a NavMesh.
