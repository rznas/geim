<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.MeshGenerationOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for generating meshes.

Use this enum with XRMeshSubsystem.GenerateMeshAsync to tell Unity how to handle data from the mesh provider.

 The mesh provider can supply a transform along with the mesh data. When this happens, the value of `MeshGenerationOptions` determines what Unity does with the supplied transform. If `ConsumeTransform` is set, Unity ignores the supplied transform. Otherwise, Unity applies the supplied transform to the vertices of the mesh, and rebakes the physics mesh. These transformation and rebaking operations can be CPU-intensive; if you do not need to perform these operations, you should set `ConsumeTransform`.

 If the mesh provider does not supply a transform, the value of `MeshGenerationOptions` has no effect.

 Additional resources: XRMeshSubsystem.GenerateMeshAsync, MeshGenerationResult

### Properties

| Property | Description |
| --- | --- |
| None | No options are specified. |
| ConsumeTransform | Indicates you plan to consume the resulting mesh's transform. |
