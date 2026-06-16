<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.MeshChangeState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The state of a tracked mesh since the last query.

This enum is used by MeshInfo to indicate which meshes have been added, updated, or removed.

 Additional resources: XRMeshSubsystem.TryGetMeshInfos

### Properties

| Property | Description |
| --- | --- |
| Added | The mesh has been added since the last call to XRMeshSubsystem.TryGetMeshInfos. |
| Updated | The mesh has been updated since the last call to XRMeshSubsystem.TryGetMeshInfos. |
| Removed | The mesh has been removed since the last call to XRMeshSubsystem.TryGetMeshInfos. |
| Unchanged | The mesh has not changed since the last call to XRMeshSubsystem.TryGetMeshInfos. |
