<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.MeshGenerationResult.Timestamp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The timestamp associated with the generated mesh.

Because generation is asynchronous, the transform provided by this MeshGenerationResult may be older than the most recent transform provided by XRMeshSubsystem.GetUpdatedMeshTransforms. Compare timestamps to ensure you are using the most recent transform.

 Additional resources: XRMeshSubsystem.GenerateMeshAsync, XRMeshSubsystem.GetUpdatedMeshTransforms
