<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.MeshInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains state information related to a tracked mesh.

This struct is used by the XRMeshSubsystem to determine which meshes have been added, updated, or removed.

 Additional resources: XRMeshSubsystem.TryGetMeshInfos

### Properties

| Property | Description |
| --- | --- |
| ChangeState | The change state (e.g., Added, Removed) of the tracked mesh. |
| MeshId | The MeshId of the tracked mesh. |
| PriorityHint | A hint that can be used to determine when this mesh should be processed. |
