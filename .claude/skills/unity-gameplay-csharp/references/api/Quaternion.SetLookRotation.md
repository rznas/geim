<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.SetLookRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| view | The direction to look in. |
| up | The vector that defines in which direction up is. |

### Description

Creates a rotation with the specified `forward` and `upwards` directions.

Modifies the current quaternion to have the specified `forward` and `upwards` directions.

This method updates the existing quaternion in place, unlike Quaternion.LookRotation which returns a new quaternion. If used to orient a Transform, the Z axis is aligned with the `forward` direction vector and the Y axis with the `upwards` direction vector, assuming these vectors are orthogonal. Logs an error if the forward direction is zero.

Additional resources: LookRotation.

```csharp
using UnityEngine;// This example demonstrates the SetLookRotation method,
// and describes its key difference from the LookRotation method.
public class Quaternions : MonoBehaviour
{
    void Start()
    {        
        Vector3 direction = Vector3.right;        // Method 1: LookRotation - a static method that created a new quaternion
        Quaternion newRotation = Quaternion.LookRotation(direction);
        Debug.Log($"LookRotation creates new: {newRotation}");        // Method 2: SetLookRotation - an instance method that modifies an existing quaternion
        Quaternion existingRotation = Quaternion.identity;
        Debug.Log($"Before SetLookRotation: {existingRotation}");
        // Modifies in place
        existingRotation.SetLookRotation(direction); 
        Debug.Log($"After SetLookRotation:  {existingRotation}");        // Both produce the same result, but use different approaches:
        Debug.Log($"Results are equal: {newRotation.Equals(existingRotation)}");        // Usage patterns:
        // LookRotation: direct assignment
        transform.rotation = Quaternion.LookRotation(direction);        // SetLookRotation: modify then assign
        Quaternion rotation = transform.rotation;
        rotation.SetLookRotation(direction);
        transform.rotation = rotation;
    }
}
```
