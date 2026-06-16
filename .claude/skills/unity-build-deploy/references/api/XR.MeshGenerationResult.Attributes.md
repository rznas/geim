<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.MeshGenerationResult.Attributes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The MeshVertexAttributes that were written to the MeshGenerationResult.Mesh.

The vertex attributes will be the intersection of those requested by the caller of XRMeshSubsystem.GenerateMeshAsync and what the subsystem's mesh provider is able to supply. For example, if you request vertex tangents, but the mesh provider cannot supply them, then MeshGenerationResult.Attributes will not include tangents.

 Additional resources: XRMeshSubsystem.GenerateMeshAsync
