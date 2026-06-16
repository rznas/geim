<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.MeshGenerationOptions.ConsumeTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates you plan to consume the resulting mesh's transform.

Used by XRMeshSubsystem.GenerateMeshAsync when the mesh provider supplies a transform. If `MeshGenerationOptions` has this value, Unity does not apply the supplied transform to the vertices. Otherwise, Unity applies the supplied transform to the vertices of the mesh, and rebakes the physics mesh.

 Additional resources: XRMeshSubsystem.GenerateMeshAsync, MeshGenerationResult
