<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.GetSettingsByID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| agentTypeID | The ID to look for. |

### Returns

**NavMeshBuildSettings** The settings found.

### Description

Returns an existing entry of NavMesh build settings.

If no previously-created settings match the provided agent type ID, the returned NavMeshBuildSettings struct will have the agentTypeID set to -1. See also: NavMeshBuildSettings.

**Note:** A default entry will always exist for the agentTypeID being 0.
