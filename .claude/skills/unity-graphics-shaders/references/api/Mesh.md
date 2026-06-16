<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A class that allows you to create or modify meshes.

Meshes contain vertices and multiple triangle arrays.

Conceptually, all vertex data is stored in separate arrays of the same size. For example, if you have a mesh of 100 Vertices, and want to have a position, normal and two texture coordinates for each vertex, then the mesh should have vertices, normals, uv and uv2 arrays, each being 100 in size. Data for i-th vertex is at index "i" in each array.

For every vertex there can be a vertex position, normal, tangent, color and up to 8 texture coordinates. Texture coordinates most often are 2D data (Vector2), but it is possible to make them Vector3 or Vector4 if needed. This is most often used for holding arbitrary data in mesh vertices, for special effects used in shaders. For skinned meshes, the vertex data can also contain boneWeights.

The mesh face data, i.e. the triangles it is made of, is simply three vertex indices for each triangle. For example, if the mesh has 10 triangles, then the triangles array should be 30 numbers, with each number indicating which vertex to use. The first three elements in the triangles array are the indices for the vertices that make up that triangle; the second three elements make up another triangle and so on.

Note that while triangle meshes are the most common use case, Unity also supports other mesh topology types, for example Line or Point meshes. For line meshes, each line is composed of two vertex indices and so on. See SetIndices and MeshTopology.

 **Simple vs Advanced Mesh API**

The Mesh class has two sets of methods for assigning data to a Mesh from script. The "simple" set of methods provide a basis for setting the indices, triangle, normals, tangents, etc. These methods include validation checks, for example to ensure that you are not passing in data that would include out-of-bounds indices. They represent the standard way to assign Mesh data from script in Unity.

The "simple" methods are: SetColors, SetIndices, SetNormals, SetTangents, SetTriangles, SetUVs, SetVertices, SetBoneWeights.

There is also an "advanced" set of methods, which allow you to directly write to the mesh data with control over whether any checks or validation should be performed. These methods are intended for advanced use cases which require maximum performance. They are faster, but allow you to skip the checks on the data you supply. If you use these methods you must make sure that you are not supplying invalid data, because Unity will not check for you.

The "advanced" methods are: SetVertexBufferParams, SetVertexBufferData, SetIndexBufferParams, SetIndexBufferData, SetSubMesh, and you can use the MeshUpdateFlags to control which checks or validation are performed or omitted. Use AcquireReadOnlyMeshData to take a read-only snapshot of Mesh data that you can use with C# Jobs and Burst, and AllocateWritableMeshData with ApplyAndDisposeWritableMeshData to create Meshes from C# Jobs and Burst.



**Manipulating meshes from a script**

There are three common tasks that might want to use the Mesh API for:

**1. Building a mesh from scratch**: should always be done in the following order:
 a) Assign vertices
 b) Assign triangles.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    [SerializeField] Vector3[] newVertices;
    [SerializeField] Vector2[] newUV;
    [SerializeField] int[] newTriangles;    void Start()
    {
        // Create a new Mesh and set its data properties (vertices, UV coordinates, and triangles).
        Mesh mesh = new Mesh
        {
            vertices = newVertices,
            uv = newUV,
            triangles = newTriangles
        };        // After updating the Mesh data, recalculate the normals. 
        // If the Mesh uses shaders with normal maps, also call RecalculateTangents for proper lighting.
        mesh.RecalculateNormals();
        
        // This assignment is temporary and will reset to the initial Mesh when exiting Play mode.
        GetComponent<MeshFilter>().mesh = mesh;
    }
}
```

**2. Modifying vertex attributes every frame**:
 a) Get vertices
 b) Modify them
 c) Assign them back to the mesh.

```csharp
using System.Collections.Generic;
using UnityEngine;public class AnimateMesh : MonoBehaviour
{
    Mesh m_Mesh;    readonly List<Vector3> m_InitialVertices = new List<Vector3>();
    readonly List<Vector3> m_InitialNormals = new List<Vector3>();
    readonly List<Vector3> m_AnimatedVertices = new List<Vector3>();    // Cache the vertices and normals lists, assuming the Mesh does not change.
    void Start()
    {
        m_Mesh = GetComponent<MeshFilter>().mesh;
        m_Mesh.GetVertices(m_InitialVertices);
        m_Mesh.GetNormals(m_InitialNormals);
        m_AnimatedVertices.AddRange(m_InitialVertices);
    }    void Update()
    {
        // Animate the vertices in the direction of the normals.
        for (var i = 0; i < m_InitialVertices.Count; i++)
            m_AnimatedVertices[i] = m_InitialVertices[i] + Mathf.Abs(Mathf.Sin(Time.time)) * m_InitialNormals[i];        // Update the mesh with the modified vertex positions.
        m_Mesh.SetVertices(m_AnimatedVertices);
    }
}
```

**3. Continously changing the mesh triangles and vertices**:
 a) Call Clear to start fresh
 b) Assign vertices and other attributes
 c) Assign triangle indices.

It is important to call Clear before assigning new vertices or triangles. Unity always checks the supplied triangle indices whether they don't reference out of bounds vertices. Calling Clear then assigning vertices then triangles makes sure you never have out of bounds data.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    [SerializeField] Vector3[] newVertices;
    [SerializeField] Vector2[] newUV;
    [SerializeField] int[] newTriangles;    void Start()
    {
        // Extract a new Mesh instance and automatically assign it to the MeshFilter component.
        Mesh mesh = GetComponent<MeshFilter>().mesh;
        
        // Clear the Mesh to reset its data before assigning new values.
        mesh.Clear();        // Update the Mesh data.
        mesh.vertices = newVertices;
        mesh.uv = newUV;
        mesh.triangles = newTriangles;
        
        // After updating the Mesh data, recalculate the normals. 
        // If the Mesh uses shaders with normal maps, also call RecalculateTangents.
        mesh.RecalculateNormals();
    }
}
```

Additional resources: MeshFilter, MeshRenderer.

### Properties

| Property | Description |
| --- | --- |
| bindposeCount | The number of bind poses in the Mesh. |
| bindposes | The bind poses. The bind pose at each index refers to the bone with the same index. |
| blendShapeCount | Returns BlendShape count on this mesh. |
| boneWeights | The BoneWeight for each vertex in the Mesh, which represents 4 bones per vertex. |
| bounds | The bounding volume of the mesh that contain all vertices of the mesh. |
| colors | Vertex colors of the Mesh. |
| colors32 | Vertex colors of the Mesh. |
| indexBufferTarget | The intended target usage of the Mesh GPU index buffer. |
| indexFormat | Format of the mesh index buffer data. |
| isReadable | Returns true if the Mesh is read/write enabled, or false if it is not. |
| lodCount | The number of LOD levels in this mesh. |
| lodSelectionCurve | This struct represents the parameters that Unity uses to calculate which Mesh LOD level to select. It contains the lodBias and lodSlope properties, which scale logarithmically using screen space pixel area. |
| normals | An array of vectors that defines the surface orientation at each vertex of the mesh. |
| skinWeightBufferLayout | The dimension of data in the bone weight buffer. |
| subMeshCount | The number of sub-meshes inside the Mesh object. |
| tangents | The tangents of the Mesh. |
| triangles | An array containing all triangles in the Mesh. |
| uv | The texture coordinates (UVs) in the first channel. |
| uv2 | The texture coordinates (UVs) in the second channel. |
| uv3 | The texture coordinates (UVs) in the third channel. |
| uv4 | The texture coordinates (UVs) in the fourth channel. |
| uv5 | The texture coordinates (UVs) in the fifth channel. |
| uv6 | The texture coordinates (UVs) in the sixth channel. |
| uv7 | The texture coordinates (UVs) in the seventh channel. |
| uv8 | The texture coordinates (UVs) in the eighth channel. |
| vertexAttributeCount | Returns the number of vertex attributes that the mesh has. (Read Only) |
| vertexBufferCount | Gets the number of vertex buffers present in the Mesh. (Read Only) |
| vertexBufferTarget | The intended target usage of the Mesh GPU vertex buffer. |
| vertexCount | Returns the number of vertices in the Mesh (Read Only). |
| vertices | Returns a copy of the vertex positions or assigns a new vertex positions array. |

### Constructors

| Constructor | Description |
| --- | --- |
| Mesh | Creates a new, empty Mesh object that can be dynamically built or modified through script. |

### Public Methods

| Method | Description |
| --- | --- |
| AddBlendShapeFrame | Adds a new blend shape frame. |
| Clear | Clears all vertex data and all triangle indices. |
| ClearBlendShapes | Clears all blend shapes from Mesh. |
| CombineMeshes | Combines several Meshes into this Mesh. |
| GetAllBoneWeights | Gets the bone weights for the Mesh. |
| GetBaseVertex | Gets the base vertex index of the given sub-mesh. |
| GetBindposes | Obtains the bind pose matrices used in skinning calculations. |
| GetBlendShapeBuffer | Retrieves a GraphicsBuffer that provides direct read and write access to GPU blend shape vertex data. |
| GetBlendShapeBufferRange | Get the location of blend shape vertex data for a given blend shape. |
| GetBlendShapeFrameCount | Returns the frame count for a blend shape. |
| GetBlendShapeFrameVertices | Retreives deltaVertices, deltaNormals and deltaTangents of a blend shape frame. |
| GetBlendShapeFrameWeight | Returns the weight of a blend shape frame. |
| GetBlendShapeIndex | Gets the index of a blend shape by given name. |
| GetBlendShapeName | Returns name of BlendShape by given index. |
| GetBonesPerVertex | The number of non-zero bone weights for each vertex. |
| GetBoneWeightBuffer | Retrieves a GraphicsBuffer that provides direct read and write access to GPU bone weight data. |
| GetBoneWeights | Gets the bone weights for the Mesh. |
| GetColors | Gets the vertex colors of the Mesh. |
| GetIndexBuffer | Retrieves a GraphicsBuffer to the GPU index buffer. |
| GetIndexCount | Gets the index count of the given sub-mesh. If the mesh contains Mesh LODs, the index count of LOD0. |
| GetIndexStart | Gets the starting index location within the Mesh's index buffer, for the given sub-mesh. |
| GetIndices | Fetches the index list for the specified sub-mesh. |
| GetLod | Gets a Mesh LOD range (index start and index count) for a given Mesh LOD. |
| GetLods | Gets an array containing the Mesh LOD ranges (index start and index count) for a given Mesh LOD. |
| GetNativeIndexBufferPtr | Retrieves a native (underlying graphics API) pointer to the index buffer. |
| GetNativeVertexBufferPtr | Retrieves a native (underlying graphics API) pointer to the vertex buffer. |
| GetNormals | Gets the vertex normals of the Mesh. |
| GetSubMesh | Get information about a sub-mesh of the Mesh. |
| GetTangents | Gets the tangents of the Mesh. |
| GetTopology | Retrieves the topology type of the specified submesh in the Mesh. |
| GetTriangles | Fetches the triangle list for the specified sub-mesh on this object. |
| GetUVDistributionMetric | The UV distribution metric can be used to calculate the desired mipmap level based on the position of the camera. |
| GetUVs | Gets the texture coordinates (UVs) stored in a given channel. |
| GetVertexAttribute | Returns information about a vertex attribute based on its index. |
| GetVertexAttributeDimension | Get dimension of a specific vertex data attribute on this Mesh. |
| GetVertexAttributeFormat | Get format of a specific vertex data attribute on this Mesh. |
| GetVertexAttributeOffset | Get offset within a vertex buffer stream of a specific vertex data attribute on this Mesh. |
| GetVertexAttributes | Get information about vertex attributes of a Mesh. |
| GetVertexAttributeStream | Gets the vertex buffer stream index of a specific vertex data attribute on this Mesh. |
| GetVertexBuffer | Retrieves a GraphicsBuffer that provides direct acces to the GPU vertex buffer. |
| GetVertexBufferStride | Get vertex buffer stream stride in bytes. |
| GetVertices | Gets the vertex positions of the Mesh. |
| HasVertexAttribute | Checks if a specific vertex data attribute exists on this Mesh. |
| MarkDynamic | Hints that the Mesh geometry data will be updated frequently, optimizing GPU buffer strategies for potentially faster data updates. |
| MarkModified | Notify Renderer components of mesh geometry change. |
| Optimize | Optimizes the Mesh data to improve rendering performance. |
| OptimizeIndexBuffers | Optimizes the geometry of the Mesh to improve rendering performance. |
| OptimizeReorderVertexBuffer | Optimizes the vertices of the Mesh to improve rendering performance. |
| RecalculateBounds | Recalculate the bounding volume of the Mesh and all of its sub-meshes with the vertex data. |
| RecalculateNormals | Recalculates the normals of the Mesh from the triangles and vertices. |
| RecalculateTangents | Recalculates the tangents of the Mesh from the normals and texture coordinates. |
| RecalculateUVDistributionMetric | Recalculates the UV distribution metric of the Mesh from the vertices and uv coordinates. |
| RecalculateUVDistributionMetrics | Recalculates the UV distribution metrics of the Mesh from the vertices and uv coordinates. |
| SetBindposes | Sets the bind poses of the Mesh. |
| SetBoneWeights | Sets the bone weights for the Mesh. |
| SetColors | Set the per-vertex colors of the Mesh. |
| SetIndexBufferData | Sets the data of the index buffer of the Mesh. |
| SetIndexBufferParams | Sets the index buffer size and format. |
| SetIndices | Sets the index buffer for the sub-mesh. |
| SetLod | Sets a Mesh LOD range (index start and index count) for a given sub-mesh and level of detail. |
| SetLods | Sets the Mesh LOD ranges (index start and index count) for a given sub-mesh with an array. |
| SetNormals | Set the normals of the Mesh. |
| SetSubMesh | Sets the information about a sub-mesh of the Mesh. |
| SetSubMeshes | Sets information defining all sub-meshes in this Mesh, replacing any existing sub-meshes. |
| SetTangents | Set the tangents of the Mesh. |
| SetTriangles | Sets the triangle list for the sub-mesh. |
| SetUVs | Sets the texture coordinates (UVs) stored in a given channel. |
| SetVertexBufferData | Sets the data within a specific vertex buffer stream, copying elements from a source container to a destination range within the Mesh's buffer. |
| SetVertexBufferParams | Sets the vertex buffer size and layout. |
| SetVertices | Assigns a new vertex positions array. |
| UploadMeshData | Upload previously done Mesh modifications to the graphics API. |

### Static Methods

| Method | Description |
| --- | --- |
| AcquireReadOnlyMeshData | Gets a snapshot of Mesh data for read-only access. |
| AllocateWritableMeshData | Allocates data structures for Mesh creation using C# Jobs. |
| ApplyAndDisposeWritableMeshData | Applies data defined in MeshData structs to Mesh objects. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
