<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetLod.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| subMeshIndex | Sub-mesh index to get LOD from. |
| levelIndex | Level of detail to get range for. |

### Returns

**MeshLodRange** Index range for the requested level of detail.

### Description

Gets a Mesh LOD range (index start and index count) for a given Mesh LOD.

Note that each Mesh LOD range is relative to the sub-mesh holding the LOD. See MeshLodRange for more information.
