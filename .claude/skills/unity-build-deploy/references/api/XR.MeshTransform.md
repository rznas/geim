<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.MeshTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains transform information related to a tracked mesh.

This struct is used by the XRMeshSubsystem to communication information about a mesh's transform.

 Additional resources: XRMeshSubsystem.GetUpdatedMeshTransforms

### Properties

| Property | Description |
| --- | --- |
| MeshId | The session-unique identifier of the tracked mesh. |
| Position | The position of the mesh, relative to the session origin. |
| Rotation | The rotation of the mesh, relative to the session origin. |
| Scale | The scale of the mesh, relative to the session origin. |
| Timestamp | The timestamp associated with this transform. |

### Constructors

| Constructor | Description |
| --- | --- |
| MeshTransform | Creates a new MeshTransform. |
