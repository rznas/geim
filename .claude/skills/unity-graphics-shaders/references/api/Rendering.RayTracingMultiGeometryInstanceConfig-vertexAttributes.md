<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingMultiGeometryInstanceConfig-vertexAttributes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array of vertex attributes that define the vertex format of vertexBuffer.

The Position attribute is mandatory for building an acceleration structure. You can access other vertex attributes in shader code using helper functions from **UnityRayTracingMeshUtils.cginc** header.

```csharp
// Defining a vertex format that contains the position, the normal and texture coordinates attributes.
VertexAttributeDescriptor[] vertexDescs = new VertexAttributeDescriptor[3];
vertexDescs[0] = new VertexAttributeDescriptor(VertexAttribute.Position, VertexAttributeFormat.Float32, 3, 0);
vertexDescs[1] = new VertexAttributeDescriptor(VertexAttribute.Normal, VertexAttributeFormat.Float32, 3, 0);
vertexDescs[2] = new VertexAttributeDescriptor(VertexAttribute.TexCoord0, VertexAttributeFormat.Float32, 2, 0);
```

Unity supports the following Position attribute data formats for building acceleration structures:

- VertexAttributeFormat.Float32
- VertexAttributeFormat.Float16
- VertexAttributeFormat.SNorm16

The Position attribute must be part of vertex buffer stream 0.

Additional resources: VertexAttributeDescriptor.
