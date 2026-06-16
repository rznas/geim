<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.GetEdgesAndNeighbors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| node | Identifier of a node from a NavMesh surface, NavMeshLink or OffMeshLink for which the vertices and neighbors need to be retrieved. |
| edgeVertices | The result buffer that contains the world positions describing the geometry of the input navigation `node`. It can have zero capacity.  Polygonal nodes of the NavMesh have a minimum of 3 and a maximum of 6 vertices.  OffMeshConnection nodes are always represented by 4 vertices, regardless of their width. |
| neighbors | The result buffer that holds the identifiers of all the navigation nodes immediately reachable from the given `node`. It can have zero capacity. |
| edgeIndices | The helper result buffer that maps each neighbor node to an edge of the given `node`. It can have zero capacity.  The index of an element in `edgeIndices` is also an index in the `neighbors` array and the value of that `edgeIndices` element is an index in the `edgeVertices` array. |
| verticesCount | The total number of vertices that describe the geometry of the input `node`. This is independent of the capacity of the `vertices` result buffer. |
| neighborsCount | The total number of navigation nodes the input `node` connects to. This is independent of the capacity of the result buffers (`neighbors` and `edgeIndices`). |

### Returns

**PathQueryStatus** `Success` if Unity can evaluate the neighbors and vertices of the specified node, regardless of the result. The `verticesCount` and `neighborsCount` are always valid in this case.
 `Failure` if Unity can not use the `node` identifier to retrieve the neighbors or geometry information. Unity does not modify any of the five result parameters (`edgeVertices`, `neighbors`, `edgeIndices`, `verticesCount` or `neighborsCount`) in this case.
 `InvalidParam` is part of the returned flags if the specified navigation node is not valid in the query's NavMeshWorld.
 `BufferTooSmall` is part of the PathQueryStatus flags, that Unity returns from this function, when any of the result buffers you provide are not large enough to hold all the neighbor nodes the input `node` connects to or all of its edge vertices.

### Description

Retrieves the vertices of a given `node` and the identifiers of all the navigation nodes to which it connects.

A polygon of a NavMesh surface connects to all other neighboring polygons with which it shares an edge as well as all the OffMeshLinks or NavMeshLinks that leave from anywhere on its surface. The polygon does not connect to other polygons with which it shares only a vertex.
 Each point returned in the `edgeVertices` array represents the start of a `node`'s edge and the subsequent element in the array is the end point of that edge. All vertices form a closed polygonal line. The last and first elements define the last edge.
 
 An off-mesh link connects to all the NavMesh polygons that each end of the link intersects with, regardless of whether the link is unidirectional.
 For link nodes the returned `edgeVertices` array contains two pairs of points at indices [0]-[1] and [2]-[3] that define the end points of the start and end edges of the link, in this order. These are the world positions established at the moment when the link is instantiated in the NavMesh world. For nodes added through NavMesh Link or OffMesh Link components the pairs contain the same value in both of their elements.
 
 A node from the `neighbors` array lies at the edge returned in `edgeIndices` at the same index.
 If both the given `node` and its neighbor are NavMesh polygons, then the corresponding `edgeIndices` value represents the index of the polygon edge that leads from `node` to the neighbor. E.g. `edgeVertices[edgeIndices[2]]` represents the start point of the edge that is common between `node` and the `neighbors[2]` node, and `edgeVertices[edgeIndices[2] + 1]` is the end point of that edge.
 A NavMesh polygon can have a maximum of 6 edges. This means the `edgeIndices` value corresponding to a polygon-polygon connection is between 0 and 5, inclusive. An edge usually connects only the two polygons that share it, but edges that sit at a tile border can connect one polygon in the first tile to multiple polygons in the second tile. In this case, `edgeIndices` report the same value for all of those neighbors.
 If either the given `node` or the `neighbor` is a link, then the corresponding `edgeIndices` value represents the side on the link where the connection is made: 0 for start and 2 for end. When the `node` is a polygon and the `neighbor` is a link the value acts only as information about the side of the link where the two nodes connect and should not be used as an index in the `edgeVertices` array.
 When the `neighbors` and `edgeIndices` buffers both have positive capacity, they must be the same size, otherwise you will encounter an `ArgumentException` when this method executes in the Editor.
 
 You can set any of the buffers to have zero capacity for the cases when you do not need the results.
 
 The returned `verticesCount` and `neighborsCount` values express the number of elements that comprise the result in the output buffers of sufficient size. Buffers that are not large enough are still filled with valid nodes up to their full capacity.
 
 The five result parameters (`edgeVertices`, `neighbors`, `edgeIndices`, `verticesCount` and `neighborsCount`) do not act as input and do not change the internal navigation data in any way. Unity only modifies them in the case when the operation returns a `Success` status.
 
 Additional resources: NavMeshQuery.GetPolygonType, NavMeshQuery.GetPortalPoints.

```csharp
using Unity.Collections;
using UnityEngine;
using UnityEngine.Experimental.AI;public class NavMeshNodeEdgesDrawer : MonoBehaviour
{
    void Update()
    {
        var query = new NavMeshQuery(NavMeshWorld.GetDefaultWorld(), Allocator.Temp);
        var vertices = new NativeArray<Vector3>(6, Allocator.Temp);
        var neighbors = new NativeArray<PolygonId>(10, Allocator.Temp);
        var edgeIndices = new NativeArray<byte>(neighbors.Length, Allocator.Temp);
        int totalVertices;
        int totalNeighbors;        var location = query.MapLocation(transform.position, Vector3.one, 0);        var queryStatus = query.GetEdgesAndNeighbors(
            location.polygon, vertices, neighbors, edgeIndices,
            out totalVertices, out totalNeighbors);        var color = (queryStatus & PathQueryStatus.Success) != 0 ? Color.green : Color.red;
        Debug.DrawLine(transform.position - Vector3.up, transform.position + Vector3.up, color);        for (int i = 0, j = totalVertices - 1; i < totalVertices; j = i++)
        {
            Debug.DrawLine(vertices[i], vertices[j], Color.grey);
        }        for (var i = 0; i < totalNeighbors; i++)
        {
            if (query.GetPolygonType(neighbors[i]) == NavMeshPolyTypes.OffMeshConnection)
            {
                // The link neighbor is not connected through any of the polygon's edges.
                // Call GetEdgesAndNeighbors() on this specific neighbor in order to retrieve its edges.
                continue;
            }            var start = edgeIndices[i];
            var end = (start + 1) % totalVertices;
            var neighborColor = Color.Lerp(Color.yellow, Color.magenta, 1f * start / (totalVertices - 1));
            Debug.DrawLine(vertices[start], vertices[end], neighborColor);
        }        query.Dispose();
        vertices.Dispose();
        neighbors.Dispose();
        edgeIndices.Dispose();
    }
}
```
