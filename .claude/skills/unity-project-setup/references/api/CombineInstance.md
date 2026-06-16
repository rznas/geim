<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CombineInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A struct that describes a single mesh to be merged with other instances into a combined mesh.

Use this `CombineInstance` struct with the Mesh.CombineMeshes method to merge multiple meshes into a single combined mesh. You must create a `CombineInstance` for each mesh you want to combine. If a mesh contains multiple sub-meshes, you must create a separate `CombineInstance` for each sub-mesh.

```csharp
using UnityEngine;// This script combines the meshes from children into a single new Mesh.
// The combined mesh is assigned to the MeshFilter of this GameObject.
// The original meshes are not destroyed, but their GameObjects are disabled.[RequireComponent(typeof(MeshFilter), typeof(MeshRenderer))]
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        MeshFilter[] meshFilters = GetComponentsInChildren<MeshFilter>();
        CombineInstance[] instances = new CombineInstance[meshFilters.Length];        for (int i = 0; i < meshFilters.Length; i++)
        {
            var meshFilter = meshFilters[i];
            
            instances[i] = new CombineInstance
            {
                mesh = meshFilter.sharedMesh,
                transform = meshFilter.transform.localToWorldMatrix,
            };            meshFilter.gameObject.SetActive(false);
        }        Mesh combinedMesh = new Mesh();
        combinedMesh.CombineMeshes(instances);
        gameObject.GetComponent<MeshFilter>().sharedMesh = combinedMesh;
        gameObject.SetActive(true);
    }
}
```

Additional resources: Mesh.CombineMeshes, Mesh.subMeshCount.

### Properties

| Property | Description |
| --- | --- |
| lightmapScaleOffset | The baked lightmap UV scale and offset applied to the Mesh. |
| mesh | The Mesh to be combined with the other meshes. |
| realtimeLightmapScaleOffset | The real-time lightmap UV scale and offset applied to the Mesh. |
| subMeshIndex | The index of the sub-mesh to be combined with the other meshes. |
| transform | A matrix used to transform vertices before combining meshes. |
