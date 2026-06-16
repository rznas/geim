<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.GetSettingsByIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index to retrieve from. |

### Returns

**NavMeshBuildSettings** The found settings.

### Description

Returns an existing entry of NavMesh build settings by its ordered index.

If the index is outside the valid range (0, GetSettingsCount-1), the returned NavMeshBuildSettings struct will have the agentTypeID set to -1.

Additional resources: NavMeshBuildSettings and GetSettingsCount.
