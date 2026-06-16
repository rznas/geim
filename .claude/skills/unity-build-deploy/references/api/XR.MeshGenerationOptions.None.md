<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.MeshGenerationOptions.None.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

No options are specified.

Used by XRMeshSubsystem.GenerateMeshAsync. If the mesh provider supplies a transform and `MeshGenerationOptions` has this value, Unity applies the supplied transform to the vertices of the mesh, and rebakes the physics mesh. If you do not need to perform these operations, you should set MeshGenerationOptions.ConsumeTransform.

 Additional resources: XRMeshSubsystem.GenerateMeshAsync, MeshGenerationResult
