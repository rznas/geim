<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.VertexAttributeDescriptor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Information about a single VertexAttribute of a Mesh vertex.

Mesh vertex data comprised of different Vertex Attributes. For example, a vertex can include a Position, Normal, TexCoord0, and Color. Meshes usually use a known format for data layout, for example, a position is most often a 3-component float vector (Vector3), but you can also specify non-standard data formats and their layout for a Mesh.

You can use `VertexAttributeDescriptor` to specify custom mesh data layout in Mesh.SetVertexBufferParams.

Vertex data is laid out in separate "streams" (each stream goes into a separate vertex buffer in the underlying graphics API). Unity supports up to four vertex streams, but you usually use only one stream. Separate streams are most useful when some vertex attributes don't need to be processed, or you need to give the vertex attributes a specific data layout.

Within each stream, attributes of a vertex are laid out one after another, in this order: VertexAttribute.Position, VertexAttribute.Normal, VertexAttribute.Tangent, VertexAttribute.Color, VertexAttribute.TexCoord0, ..., VertexAttribute.TexCoord7, VertexAttribute.BlendWeight, VertexAttribute.BlendIndices.

If you include `BlendWeight` or `BlendIndices` attributes in your vertex data, the following applies:

- If you use a layout other than Unity's default stream layout, Unity might reorder your vertex attributes or incorrectly render your vertices in a SkinnedMeshRenderer.
- Unity puts position, normal, and tangent into the same vertex stream, and uses `float32` format regardless of the format you specify.

1. In the first stream, add VertexAttribute.Position, VertexAttribute.Normal and VertexAttribute.Tangent.
2. In the second stream, add VertexAttribute.Color, and VertexAttribute.TexCoord0 to VertexAttribute.TexCoord7.
3. In the third stream, add VertexAttribute.BlendWeight and VertexAttribute.BlendIndices.

All the attributes in the second stream are optional. If you don't include any `Color` or `TexCoord` attributes, add `BlendWeight` and `BlendIndices` to the second stream instead.

Not all format and dimension combinations are valid. Specifically, the data size of a vertex attribute must be a multiple of 4 bytes. For example, a VertexAttributeFormat.Float16 format with dimension `3` is not valid. Additional resources: SystemInfo.SupportsVertexAttributeFormat.

```csharp
var mesh = new Mesh();
// specify vertex layout with:
// - floating point positions,
// - half-precision (FP16) normals with two components,
// - low precision (UNorm8) tangents
var layout = new[]
{
    new VertexAttributeDescriptor(VertexAttribute.Position, VertexAttributeFormat.Float32, 3),
    new VertexAttributeDescriptor(VertexAttribute.Normal, VertexAttributeFormat.Float16, 2),
    new VertexAttributeDescriptor(VertexAttribute.Tangent, VertexAttributeFormat.UNorm8, 4),
};
var vertexCount = 10;
mesh.SetVertexBufferParams(vertexCount, layout);
```

A C# struct (for use with Mesh.SetVertexBufferData) matching this vertex layout could look like this:

```csharp
[System.Runtime.InteropServices.StructLayout(System.Runtime.InteropServices.LayoutKind.Sequential)]
struct ExampleVertex
{
    public Vector3 pos;
    public ushort normalX, normalY;
    public Color32 tangent;
}
```

Additional resources: Mesh.SetVertexBufferParams, Mesh.SetVertexBufferData, Mesh.GetVertexAttributes.

### Properties

| Property | Description |
| --- | --- |
| attribute | The vertex attribute. |
| dimension | Dimensionality of the vertex attribute. |
| format | Format of the vertex attribute. |
| stream | Which vertex buffer stream the attribute should be in. |

### Constructors

| Constructor | Description |
| --- | --- |
| VertexAttributeDescriptor | Create a VertexAttributeDescriptor structure. |
