<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.RotateAround.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| point | The world-space point to rotate the target object around. |
| axis | The world-space axis to rotate the target object around. This vector does not need to be unit length. |
| angle | The angle to rotate, provided in degrees. |

### Description

Rotates the transform about `axis` passing through `point` in world coordinates by `angle` degrees.

This modifies both the position and the rotation of the transform, but will not affect its scale.

If the provided axis's magnitude is too close to zero, the function returns without performing any rotation.

For more information on Rotation in Unity, see Rotation and Orientation in Unity.

Additional resources: Transform.Rotate.

```csharp
using UnityEngine;//Attach this script to a GameObject to rotate around the target position.
public class Example : MonoBehaviour
{
    //Assign a GameObject in the Inspector to rotate around
    public GameObject target;    void Update()
    {
        // Spin the object around the target at 20 degrees/second.
        transform.RotateAround(target.transform.position, Vector3.up, 20 * Time.deltaTime);
    }
}
```
