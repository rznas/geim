<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetBindposes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**NativeArray<Matrix4x4>** A `NativeArray` that references the mesh's internal bind pose data. The array uses Allocator.None and should not be disposed. Remains valid until the mesh is modified or destroyed.

### Description

Obtains the bind pose matrices used in skinning calculations.

Provides access to the mesh's bind pose matrices, which define the inverse transform of each bone in the mesh's initial pose. 

The bind pose at each index corresponds to the bone at the same index in SkinnedMeshRenderer.bones. This method provides direct access to the mesh's internal data without creating a copy.

```csharp
using System.Collections.Generic;
using UnityEngine;
using Unity.Collections;public class BindPoseProcessor : MonoBehaviour
{
    // This example assumes the script is attached to a GameObject
    // with a SkinnedMeshRenderer component.
    [ContextMenu("Restore Bindpose")]
    void ProcessBindPoses()
    {
        var renderer = GetComponent<SkinnedMeshRenderer>();
        if (renderer == null || renderer.sharedMesh == null) return;
        
        var bones = renderer.bones;
        // Get the bind poses from the mesh. This returns a NativeArray for direct,
        // allocation-free access to the data.
        NativeArray<Matrix4x4> bindPoses = renderer.sharedMesh.GetBindposes();        if (bones.Length != bindPoses.Length) return;        var bindposesDict = new Dictionary<Transform, Matrix4x4>();
        for (int i = 0; i < bones.Length; ++i)
        {
            bindposesDict.Add(bones[i], bindPoses[i]);
        }        // Iterate over each bone to reset its transform to its original bind pose.
        foreach (var bone in bones)
        {
            var matrix = bindposesDict[bone];
            var wMatrix = matrix.inverse;            var isRootBone = !bindposesDict.ContainsKey(bone.parent);
            if (!isRootBone)
            {
                if (bone.parent)
                {
                    // To get the local matrix, multiply the bone's bindpose by the inverse of its parent's bindpose.
                    matrix *= bindposesDict[bone.parent].inverse;
                }
                
                // Invert the resulting matrix to get the final local-to-parent transformation.
                matrix = matrix.inverse;                // Decompose the local matrix to extract and set the bone's local scale and position.
                bone.localScale = new Vector3(
                    matrix.GetColumn(0).magnitude,
                    matrix.GetColumn(1).magnitude,
                    matrix.GetColumn(2).magnitude
                );
                bone.localPosition = matrix.MultiplyPoint(Vector3.zero);
            }
            // Set the bone's world rotation from the inverse bindpose matrix.
            bone.rotation = wMatrix.rotation;
        }
    }
}
```

Additional resources: Mesh.bindposes, SkinnedMeshRenderer.bones.

### Parameters

| Parameter | Description |
| --- | --- |
| bindposes | The list to receive the bind pose matrices. |

### Description

Obtains the bind pose matrices used in skinning calculations.

Provides access to the mesh's bind pose matrices, which define the inverse transform of each bone in the mesh's initial pose.

The bind pose at each index corresponds to the bone at the same index in SkinnedMeshRenderer.bones. This method is useful for scenarios where you want to reuse the same list across multiple calls and you want to avoid allocating a new array with every access.

```csharp
using System.Collections.Generic;
using UnityEngine;public class BindPoseProcessor : MonoBehaviour
{
    // A reusable list to store the bind poses, avoiding repeated memory allocations.
    private List<Matrix4x4> m_BindPoses = new List<Matrix4x4>();    // This example assumes the script is attached to a GameObject
    // with a SkinnedMeshRenderer component.
    [ContextMenu("Restore Bindpose")]
    void ProcessBindPoses()
    {
        var renderer = GetComponent<SkinnedMeshRenderer>();
        if (renderer == null || renderer.sharedMesh == null) return;        var bones = renderer.bones;
        // Get the bind poses by populating the pre-existing list. This avoids
        // allocating a new list for every call.
        renderer.sharedMesh.GetBindposes(m_BindPoses);        if (bones.Length != m_BindPoses.Count) return;        var bindposesDict = new Dictionary<Transform, Matrix4x4>();
        for (int i = 0; i < bones.Length; ++i)
        {
            bindposesDict.Add(bones[i], m_BindPoses[i]);
        }        // Iterate over each bone to reset its transform to its original bind pose.
        foreach (var bone in bones)
        {
            var matrix = bindposesDict[bone];
            var wMatrix = matrix.inverse;            var isRootBone = !bindposesDict.ContainsKey(bone.parent);
            if (!isRootBone)
            {
                if (bone.parent)
                {
                    // To get the local matrix, multiply the bone's bindpose by the inverse of its parent's bindpose.
                    matrix *= bindposesDict[bone.parent].inverse;
                }                // Invert the resulting matrix to get the final local-to-parent transformation.
                matrix = matrix.inverse;                // Decompose the local matrix to extract and set the bone's local scale and position.
                bone.localScale = new Vector3(
                    matrix.GetColumn(0).magnitude,
                    matrix.GetColumn(1).magnitude,
                    matrix.GetColumn(2).magnitude
                );
                bone.localPosition = matrix.MultiplyPoint(Vector3.zero);
            }
            // Set the bone's world rotation from the inverse bindpose matrix.
            bone.rotation = wMatrix.rotation;
        }
    }
}
```

Additional resources: Mesh.bindposes, SkinnedMeshRenderer.bones.
