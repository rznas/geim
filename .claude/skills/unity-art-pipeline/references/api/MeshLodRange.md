<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshLodRange.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Index range (start index and index count) describing a single Mesh LOD within a Mesh.

The index range is relative to the sub-mesh holding the LOD. Add SubMeshDescriptor.indexStart to this range to calculate the absolute position of the LOD within the whole index buffer.

Additional resources: Mesh.SetLod, Mesh.SetLods.

### Properties

| Property | Description |
| --- | --- |
| indexCount | This property, together with indexStart, determines which part of the whole index buffer is used by a particular Mesh LOD. This should be a positive number or zero.Additional resources: indexStart, Mesh.SetLod, Mesh.SetLods. |
| indexStart | This property, together with indexCount, determines which part of the whole index buffer is used by a particular Mesh LOD. The index start is relative to the sub-mesh holding the LOD. This should be a positive number or zero.Additional resources: indexCount, Mesh.SetLod, Mesh.SetLods. |

### Constructors

| Constructor | Description |
| --- | --- |
| MeshLodRange | Create a MeshLodRange. |
