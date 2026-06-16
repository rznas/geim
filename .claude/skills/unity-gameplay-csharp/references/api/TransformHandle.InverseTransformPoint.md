<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle.InverseTransformPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transforms `position` from world space to local space.

This function is essentially the opposite of TransformHandle.TransformPoint which is used to convert from local to world space.

Note that the returned position is affected by scale. Use TransformHandle.InverseTransformDirection if you are dealing with direction vectors rather than positions.

If you need to transform many points at once consider using TransformHandle.InverseTransformPoints instead as it is much faster than repeatedly calling this function.

```csharp
// Calculate the transform's position relative to the camera.
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public TransformHandle cam;
    public Vector3 cameraRelative;    void Start()
    {
        cam = Camera.main.transformHandle;
        Vector3 cameraRelative = cam.InverseTransformPoint(transformHandle.position);        if (cameraRelative.z > 0)
            print("The object is in front of the camera");
        else
            print("The object is behind the camera");
    }
}
```

Additional resources:TransformHandle.TransformPoint, TransformHandle.InverseTransformPoints, TransformHandle.InverseTransformDirection, TransformHandle.InverseTransformVector.

### Description

Transforms the position `x`, `y`, `z` from world space to local space.

This function is essentially the opposite of TransformHandle.TransformPoint which is used to convert from local to world space.

Note that the returned position is affected by scale. Use TransformHandle.InverseTransformDirection if you are dealing with direction vectors rather than positions.

If you need to transform many points at once consider using TransformHandle.InverseTransformPoints instead as it is much faster than repeatedly calling this function.

```csharp
// Calculate the world origin relative to this transform.
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Vector3 relativePoint = transformHandle.InverseTransformPoint(0, 0, 0);        if (relativePoint.z > 0)
            print("The world origin is in front of this object");
        else
            print("The world origin is behind this object");
    }
}
```

Additional resources:TransformHandle.TransformPoint, TransTransformHandleform.InverseTransformPoints, TransformHandle.InverseTransformDirection, TransformHandle.InverseTransformVector.
