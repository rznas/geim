<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetBonesPerVertex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**NativeArray<byte>** Returns the number of non-zero bone weights for each vertex.

### Description

The number of non-zero bone weights for each vertex.

The size of the returned array is either Mesh.vertexCount or zero. The array is sorted in vertex index order.

Use in combination with Mesh.GetAllBoneWeights to get bone weights for the vertices in the Mesh.

You don't need to dispose the returned native array. However the native array points to memory that might be deallocated or reallocated, so you should either call `GetBonesPerVertex` every frame to get the correct data, or check the native array is still valid each frame.

Additional resources: Mesh.GetAllBoneWeights, Mesh.SetBoneWeights, ModelImporter.maxBonesPerVertex, QualitySettings.skinWeights, SkinnedMeshRenderer.quality.

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
