<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshTopology.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies how the indices in a mesh's index buffer are used to construct geometry.

Depending on the topology type, the combination of indices and vertices form shapes such as triangles, quads, lines, or points. 

The most commonly used topology is MeshTopology.Triangles, as most hardware is optimized to render triangles efficiently. In meshes with multiple sub-meshes, the topology can be individually set for each sub-mesh.

This enum is commonly used in scripts to define geometry or create procedural meshes.

```csharp
// This example demonstrates how to create a mesh with two sub-meshes, each using a distinct topology.
Mesh mesh = new Mesh();
mesh.vertices = new Vector3[]
{
    new Vector3(0, 0, 0),
    new Vector3(1, 0, 0),
    new Vector3(0, 1, 0),
    new Vector3(1, 1, 0),
};
mesh.subMeshCount = 2;
mesh.SetIndices(new int[] { 0, 2, 1 }, MeshTopology.Triangles, 1);
mesh.SetIndices(new int[] { 0, 2, 3, 1, 0 }, MeshTopology.LineStrip, 0);
mesh.RecalculateNormals();
```

Additional resources: Mesh, SubMeshDescriptor, Mesh.SetIndices.

### Properties

| Property | Description |
| --- | --- |
| Triangles | Connects indices in groups of three to form triangular faces. |
| Quads | Connects indices in groups of four to form quadrilateral faces. |
| Lines | Connects pairs of indices to form individual line segments. |
| LineStrip | Connects indices consecutively to form a single continuous line. |
| Points | Interprets indices as individual points without forming connected geometry. |
