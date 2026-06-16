<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.InverseTransformPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transforms `position` from world space to local space.

This function is essentially the opposite of Transform.TransformPoint which is used to convert from local to world space.

Note that the returned position is affected by scale. Use Transform.InverseTransformDirection if you are dealing with direction vectors rather than positions.

If you need to transform many points at once consider using Transform.InverseTransformPoints instead as it is much faster than repeatedly calling this function.

```csharp
// Calculate the transform's position relative to the camera.
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Transform cam;
    public Vector3 cameraRelative;    void Start()
    {
        cam = Camera.main.transform;
        Vector3 cameraRelative = cam.InverseTransformPoint(transform.position);        if (cameraRelative.z > 0)
            print("The object is in front of the camera");
        else
            print("The object is behind the camera");
    }
}
```

Additional resources:Transform.TransformPoint, Transform.InverseTransformPoints, Transform.InverseTransformDirection, Transform.InverseTransformVector.

### Description

Transforms the position `x`, `y`, `z` from world space to local space.

This function is essentially the opposite of Transform.TransformPoint which is used to convert from local to world space.

Note that the returned position is affected by scale. Use Transform.InverseTransformDirection if you are dealing with direction vectors rather than positions.

If you need to transform many points at once consider using Transform.InverseTransformPoints instead as it is much faster than repeatedly calling this function.

```csharp
// Calculate the world origin relative to this transform.
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Vector3 relativePoint = transform.InverseTransformPoint(0, 0, 0);        if (relativePoint.z > 0)
            print("The world origin is in front of this object");
        else
            print("The world origin is behind this object");
    }
}
```

Additional resources:Transform.TransformPoint, Transform.InverseTransformPoints, Transform.InverseTransformDirection, Transform.InverseTransformVector.
