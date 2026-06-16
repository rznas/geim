<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion-identity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The identity rotation (Read Only).

This property represents zero rotation. For example, if you assign `Quaternion.identity` to a transform's world coordinates, the transform's axis (**right**, **up**, **forward**) aligns with the world axis (**x**, **y**, **z**). If you assign it to the transform's local rotation, the transform aligns with the axis of its parent. Key property characteristics:

 * Setting `transform.rotation = Quaternion.identity` aligns the object with the world axes.

 * Setting `transform.localRotation = Quaternion.identity` sets the object's local rotation to match the parent's orientation (no local rotation relative to the parent).

 * Multiplying by `Quaternion.identity` has no effect.

 Common use cases:

 * Instantiate objects with neutral rotation: `Instantiate(prefab, position, Quaternion.identity)`.

 * Reset object rotation to world-aligned state.

 * Use as a starting point for rotational calculations.

```csharp
using UnityEngine;public class QuaternionIdentityExample : MonoBehaviour
{
    public Transform parentObject;
    public Transform childObject;    void Start()
    {
        // Quaternion.identity represents zero rotation relative to world coordinate system, aligned with world axes.
        transform.rotation = Quaternion.identity;        // Demonstrate the difference between world rotation and local rotation:
        if (parentObject != null && childObject != null)
        {
            // Set child to identity rotation
            childObject.rotation = Quaternion.identity;
            
            // Child is aligned with world axes, not current parent's rotated axes.
            Debug.Log($"Child rotation: {childObject.rotation}");
            Debug.Log($"Parent rotation: {parentObject.rotation}");
            
            // To align with current parent axes, use:
            // childObject.localRotation = Quaternion.identity;
        }
    }
}
```
