<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetAllBoneWeights.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**NativeArray<BoneWeight1>** Returns all non-zero bone weights for the Mesh, in vertex index order. The array uses Allocator.None and does not have to be manually disposed. The data remains valid until the mesh is modified or destroyed.

### Description

Gets the bone weights for the Mesh.

Use Mesh.GetBonesPerVertex to get the number of non-zero weights for each vertex, and then use that to iterate over this data.

For each vertex, the BoneWeight1 structs are sorted by BoneWeight1.weight, in descending order.

Additional resources: Mesh.SetBoneWeights, Mesh.GetBonesPerVertex, Mesh.boneWeights, Mesh.GetBoneWeights ModelImporter.maxBonesPerVertex, QualitySettings.skinWeights, SkinnedMeshRenderer.quality.

```csharp
using UnityEngine;public class TestSkinnedMesh : MonoBehaviour {
    void Start()
    {
        // Get a reference to the mesh
        var skinnedMeshRenderer = GetComponent<SkinnedMeshRenderer>();
        var mesh = skinnedMeshRenderer.sharedMesh;        // Get the number of bone weights per vertex
        var bonesPerVertex = mesh.GetBonesPerVertex();
        if (bonesPerVertex.Length == 0)
        {
             return;
        }        // Get all the bone weights, in vertex index order
        var boneWeights = mesh.GetAllBoneWeights();        // Keep track of where we are in the array of BoneWeights, as we iterate over the vertices
        var boneWeightIndex = 0;        // Iterate over the vertices
        for (var vertIndex = 0; vertIndex < mesh.vertexCount; vertIndex++)
        {
            var totalWeight = 0f;
            var numberOfBonesForThisVertex = bonesPerVertex[vertIndex];
            Debug.Log("This vertex has " + numberOfBonesForThisVertex + " bone influences");            // For each vertex, iterate over its BoneWeights
            for (var i = 0; i < numberOfBonesForThisVertex; i++)
            {
                var currentBoneWeight = boneWeights[boneWeightIndex];
                totalWeight += currentBoneWeight.weight;
                if (i > 0)
                {
                    Debug.Assert(boneWeights[boneWeightIndex - 1].weight >= currentBoneWeight.weight);
                }
                boneWeightIndex++;
            }
            Debug.Assert(Mathf.Approximately(1f, totalWeight));
        }
    }
}
```
