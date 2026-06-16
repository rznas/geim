<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.TransformPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transforms `position` from local space to world space.

Note that the returned position is affected by scale. Use Transform.TransformDirection if you are dealing with direction vectors.

You can perform the opposite conversion, from world to local space using Transform.InverseTransformPoint.

If you need to transform many points at once consider using Transform.TransformPoints instead as it is much faster than repeatedly calling this function.

Additional resources: Transform.TransformPoints, Transform.TransformDirection, Transform.TransformVector.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public GameObject someObject;
    public Vector3 thePosition;    void Start()
    {
        // Instantiate an object to the right of the current object
        thePosition = transform.TransformPoint(Vector3.right * 2);
        Instantiate(someObject, thePosition, someObject.transform.rotation);
    }
}
```

### Description

Transforms the position `x`, `y`, `z` from local space to world space.

Note that the returned position is affected by scale. Use Transform.TransformDirection if you are dealing with direction vectors.

You can perform the opposite conversion, from world to local space using Transform.InverseTransformPoint.

If you need to transform many points at once consider using Transform.TransformPoints instead as it is much faster than repeatedly calling this function.

Additional resources: Transform.TransformPoints, Transform.TransformDirection, Transform.TransformVector.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public GameObject someObject;    void Start()
    {
        // Instantiate an object to the right of the current object
        Vector3 thePosition = transform.TransformPoint(2, 0, 0);
        Instantiate(someObject, thePosition, someObject.transform.rotation);
    }
}
```
