<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh-bindposes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The bind poses. The bind pose at each index refers to the bone with the same index.

Each matrix in `bindposes` is the inverse of the transformation matrix of the bone, calculated when the bone is in its base state (its bind pose).

 **Note:** See the Mesh page where example 2 shows vertices being copied, updated and and re-assigned to the Mesh. The example on this page also updates bindposes, SkinnedMeshRenderer.bones and SkinnedMeshRenderer.sharedMesh in the same way.

```csharp
using System.Collections.Generic;
using UnityEngine;public class RestoreBindposeUtility : MonoBehaviour
{
    [ContextMenu("Restore Bindpose")]
    void RestoreBindpose()
    {
        // Get the SkinnedMeshRenderer component from this GameObject.
        var renderer = GetComponent<SkinnedMeshRenderer>();
        // Create a dictionary to map each bone transform to its bindpose matrix for quick lookups.
        var bindposes = new Dictionary<Transform, Matrix4x4>();        // Populate the dictionary by iterating through the bones and their corresponding bindposes.
        for (int i = 0; i < renderer.bones.Length; ++i)
            bindposes.Add(renderer.bones[i], renderer.sharedMesh.bindposes[i]);        // Iterate over each bone to reset its transform to its original bind pose.
        foreach (var bone in renderer.bones)
        {
            // Get the bone's bindpose matrix, which transforms from the bone's local space to world space.
            var matrix = bindposes[bone];
            // Get the inverse of the bindpose matrix, which transforms from world space to the bone's local space.
            var wMatrix = matrix.inverse;            // Check if the current bone is a root bone of the rig by seeing if its parent is not in the dictionary.
            var isRootBone = !bindposes.ContainsKey(bone.parent);
            // If the bone is not a root bone, calculate its local transformation relative to its parent.
            if (!isRootBone)
            {
                if (bone.parent)
                    // To get the local matrix, multiply the bone's bindpose by the inverse of its parent's bindpose.
                    // This cancels out the parent's transformation, leaving the local transformation.
                    matrix *= bindposes[bone.parent].inverse;                // Invert the resulting matrix to get the final local-to-parent transformation.
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
