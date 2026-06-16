<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.MeshGenerationStatus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The status of a XRMeshSubsystem.GenerateMeshAsync.

XRMeshSubsystem.GenerateMeshAsync will always invoke the provided delegate when the generation completes. This enum contains information about whether the generation was successful, or if an error occurred.

 Additional resources: XRMeshSubsystem.GenerateMeshAsync

### Properties

| Property | Description |
| --- | --- |
| Success | The mesh generation was successful. |
| InvalidMeshId | The mesh generation failed because the mesh does not exist. |
| GenerationAlreadyInProgress | The XRMeshSubsystem was already generating the requested mesh. |
| Canceled | The mesh generation was canceled. |
| UnknownError | The mesh generation failed for unknown reasons. |
