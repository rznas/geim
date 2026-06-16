<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform-rotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A Quaternion that stores the rotation of the Transform in world space.

Transform.rotation stores a Quaternion. You can use rotation to rotate a GameObject or provide the current rotation. Do not attempt to edit/modify rotation. Transform.rotation is less than 180 degrees.

Transform.rotation has no gimbal lock.

To rotate a Transform, use Transform.Rotate, which uses Euler Angles.

If you want to match values you see in the Inspector, use the Quaternion.eulerAngles property on the returned Quaternion.

```csharp
using UnityEngine;// Transform.rotation example.// Rotate a GameObject using a Quaternion.
// Tilt the cube using the arrow keys. When the arrow keys are released
// the cube will be rotated back to the center using Slerp.public class ExampleScript : MonoBehaviour
{
    float smooth = 5.0f;
    float tiltAngle = 60.0f;    void Update()
    {
        // Smoothly tilts a transform towards a target rotation.
        float tiltAroundZ = Input.GetAxis("Horizontal") * tiltAngle;
        float tiltAroundX = Input.GetAxis("Vertical") * tiltAngle;        // Rotate the cube by converting the angles into a quaternion.
        Quaternion target = Quaternion.Euler(tiltAroundX, 0, tiltAroundZ);        // Dampen towards the target rotation
        transform.rotation = Quaternion.Slerp(transform.rotation, target,  Time.deltaTime * smooth);
    }
}
```

In the above example, the rotation is described by a quaternion. For more advice, see Rotation and Orientation in Unity.
