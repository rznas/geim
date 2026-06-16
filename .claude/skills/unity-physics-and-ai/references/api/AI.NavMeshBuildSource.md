<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuildSource.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The input to the NavMesh builder is a list of NavMesh build sources.

Their shape can be one of the following: mesh, terrain, box, sphere, or capsule. Each of them is described by a NavMeshBuildSource struct.

You can specify a build source by filling a NavMeshBuildSource struct and adding that to the list of sources that are passed to the bake function. Alternatively, you can use the collect API to quickly create NavMesh build sources from available render meshes or physics colliders. See NavMeshBuilder.CollectSources.

If you use this function at runtime, any meshes with read/write access disabled will not be processed or included in the final NavMesh. See Mesh.isReadable.

```csharp
using UnityEngine;
using UnityEngine.AI;public class Example : MonoBehaviour
{
    // Make a build source for a box in local space
    public NavMeshBuildSource BoxSource10x10()
    {
        var src = new NavMeshBuildSource();
        src.transform = transform.localToWorldMatrix;
        src.shape = NavMeshBuildSourceShape.Box;
        src.size = new Vector3(10.0f, 0.1f, 10.0f);
        return src;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| area | Describes the area type of the NavMesh surface for this object. |
| component | Points to the owning component - if available, otherwise null. |
| generateLinks | Enables the links generation for this object. |
| shape | The type of the shape this source describes. Additional resources: NavMeshBuildSourceShape. |
| size | Describes the dimensions of the shape. |
| sourceObject | Describes the object referenced for Mesh and Terrain types of input sources. |
| transform | Describes the local to world transformation matrix of the build source. That is, position and orientation and scale of the shape. |
