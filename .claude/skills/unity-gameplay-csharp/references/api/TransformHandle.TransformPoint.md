<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle.TransformPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transforms `position` from local space to world space.

Note that the returned position is affected by scale. Use TransformHandle.TransformDirection if you are dealing with direction vectors.

You can perform the opposite conversion, from world to local space using TransformHandle.InverseTransformPoint.

If you need to transform many points at once consider using TransformHandle.TransformPoints instead as it is much faster than repeatedly calling this function.

Additional resources: TransformHandle.TransformPoints, TransformHandle.TransformDirection, TransformHandle.TransformVector.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public GameObject someObject;
    public Vector3 thePosition;    void Start()
    {
        // Instantiate an object to the right of the current object
        thePosition = transformHandle.TransformPoint(Vector3.right * 2);
        Instantiate(someObject, thePosition, someObject.transformHandle.rotation);
    }
}
```

### Description

Transforms the position `x`, `y`, `z` from local space to world space.

Note that the returned position is affected by scale. Use TransformHandle.TransformDirection if you are dealing with direction vectors.

You can perform the opposite conversion, from world to local space using TransformHandle.InverseTransformPoint.

If you need to transform many points at once consider using TransformHandle.TransformPoints instead as it is much faster than repeatedly calling this function.

Additional resources: TransformHandle.TransformPoints, TransformHandle.TransformDirection, TransformHandle.TransformVector.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public GameObject someObject;    void Start()
    {
        // Instantiate an object to the right of the current object
        Vector3 thePosition = transformHandle.TransformPoint(2, 0, 0);
        Instantiate(someObject, thePosition, someObject.transformHandle.rotation);
    }
}
```
