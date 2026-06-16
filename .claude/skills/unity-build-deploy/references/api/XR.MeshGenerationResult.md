<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.MeshGenerationResult.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains event information related to a generated mesh.

This struct is used by the XRMeshSubsystem to provide information about the result of XRMeshSubsystem.GenerateMeshAsync.

### Properties

| Property | Description |
| --- | --- |
| Attributes | The MeshVertexAttributes that were written to the MeshGenerationResult.Mesh. |
| Mesh | If the generation was successful, data has been written to this Mesh. |
| MeshCollider | If the generation was successful, physics data has been written to this MeshCollider. |
| MeshId | The MeshId of the tracked mesh that was generated. |
| Position | The position associated with the generated mesh relative to the session origin. |
| Rotation | The rotation associated with the generated mesh relative to the session origin. |
| Scale | The scale associated with the generated mesh relative to the session origin. |
| Status | The MeshGenerationStatus of the mesh generation task. |
| Timestamp | The timestamp associated with the generated mesh. |
