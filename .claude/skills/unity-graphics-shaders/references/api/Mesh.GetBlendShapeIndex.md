<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetBlendShapeIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| blendShapeName | The name of the blend shape to find. |

### Returns

**int** An integer representing the index of the blend shape if found.

### Description

Gets the index of a blend shape by given name.

To manipulate a specific blend shape at runtime, you often need its index. If a blend shape with the specified `blendShapeName` does not exist on the Mesh, this method returns -1. It is important to check for this return value to avoid passing an invalid index to other APIs. The name comparison is case-sensitive.

Additional resources: Mesh.blendShapeCount, Mesh.GetBlendShapeName, SkinnedMeshRenderer.SetBlendShapeWeight.

```csharp
// This example requires a GameObject with a SkinnedMeshRenderer component
// and a Mesh that contains at least one blend shape.
// It finds the index of a blend shape by its name and uses the index
// to set the blend shape's weight to 100.using UnityEngine;[RequireComponent(typeof(SkinnedMeshRenderer))]
public class GetBlendShapeIndexExample : MonoBehaviour
{
    // Set this in the Inspector to the name of the blend shape you want to find.
    public string blendShapeToFind = "Blink";    private SkinnedMeshRenderer skinnedMeshRenderer;
    private Mesh mesh;    void Start()
    {
        // Get the SkinnedMeshRenderer and its associated mesh.
        skinnedMeshRenderer = GetComponent<SkinnedMeshRenderer>();
        mesh = skinnedMeshRenderer.sharedMesh;        if (mesh == null)
        {
            Debug.LogError("SkinnedMeshRenderer does not have a mesh assigned.", this);
            return;
        }        if (mesh.blendShapeCount == 0)
        {
            Debug.LogWarning("This mesh has no blend shapes.", this);
            return;
        }        // Get the index of the blend shape using its name.
        int blendShapeIndex = mesh.GetBlendShapeIndex(blendShapeToFind);        // Check if the blend shape was found. GetBlendShapeIndex returns -1 if it's not found.
        if (blendShapeIndex != -1)
        {
            Debug.Log($"Successfully found blend shape '{blendShapeToFind}' at index: {blendShapeIndex}", this);            // As a practical example, set the weight of this blend shape to its maximum value.
            // A weight of 100 means the blend shape is fully applied.
            skinnedMeshRenderer.SetBlendShapeWeight(blendShapeIndex, 100.0f);
            Debug.Log($"Set weight of '{blendShapeToFind}' to 100.", this);
        }
        else
        {
            // If the blend shape is not found, log an error with a list of available blend shapes.
            string availableShapes = "";
            for (int i = 0; i < mesh.blendShapeCount; i++)
            {
                availableShapes += $"\n- {mesh.GetBlendShapeName(i)}";
            }
            Debug.LogError($"Blend shape '{blendShapeToFind}' not found on the mesh. Available shapes are:{availableShapes}", this);
        }
    }
}
```
