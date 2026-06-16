<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/mesh-index-data.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Mesh index data

The index array contains integers that refer to elements in the vertex positions array. These integers are called indices.

Unity uses the indices to connect the vertex positions into faces. The number of indices that make up each face depends on the topology of the **mesh**.

In the `Mesh` class, you can get this data with Mesh.GetIndices, and set it with Mesh.SetIndices. Unity also stores this data in Mesh.triangles, but this older property is less efficient and user-friendly.

**Note:** The Points topology doesn’t create faces; instead, Unity renders a single point at each position. All other mesh topologies use more than one index to create either faces or edges.

For example, for a mesh that has an index array that contains the following values:

0,1,2,3,4,5

If the mesh has a triangular topology, then the first three elements (0,1,2) identify one triangle, and the following three elements (3, 4, 5) identify another triangle. There is no limit to the number of faces that a vertex can contribute to. This means that the same vertex can appear in the index array multiple times. For example, an index array could contain these values:

0,1,2,1,2,3

If the mesh has a triangular topology, then the first three elements (0,1,2) identify one triangle, and the following three elements (1,2,3) identify another triangle that shares vertices with the first.

## Winding order

The order of the vertices in each group in the index array is called the **winding order**. Unity uses winding order to determine whether a face is front-facing or back-facing, and in turn whether it should render a face or cull it (exclude it from rendering). By default, Unity renders front-facing polygons and culls back-facing polygons. Unity uses a clockwise winding order, which means that Unity considers any face where the indices connect in a clockwise direction is front facing.

The above diagram demonstrates how Unity uses winding order. The order of the vertices in each face determines the direction of the normal for that face and Unity compares this to the forward direction of the current **camera** perspective. If the normal points away from the current camera’s forward direction, it is back-facing. The closer triangle is ordered (1, 2, 3), which is a clockwise direction in relation to the current perspective, so the triangle is front-facing. The further triangle is ordered (4, 5, 6), which from this perspective is an anti-clockwise direction, so the triangle is back-facing.
