<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle.InverseTransformDirection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transforms a `direction` from world space to local space. The opposite of TransformHandle.TransformDirection.

This operation is not affected by scale or position of the transform. The transformed vector has the same length as the original.

If you need the inverse operation to transform from local space to world space you can use TransformHandle.TransformDirection

You should use TransformHandle.InverseTransformPoint if the vector represents a position in space rather than a direction.

If you need to transform many directions at once consider using TransformHandle.InverseTransformDirections instead as it is much faster than repeatedly calling this function.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // transform the world forward into local space:
        Vector3 relative;
        relative = transformHandle.InverseTransformDirection(Vector3.forward);
        Debug.Log(relative);
    }
}
```

Additional resources:TransformHandle.TransformDirection, TransformHandle.InverseTransformDirections, TransformHandle.InverseTransformPoint, TransformHandle.InverseTransformVector.

### Description

Transforms the direction `x`, `y`, `z` from world space to local space. The opposite of TransformHandle.TransformDirection.

This operation is not affected by scale or position of the transform. The transformed vector has the same length as the original.

If you need the inverse operation to transform from local space to world space you can use TransformHandle.TransformDirection

You should use TransformHandle.InverseTransformPoint if the vector represents a position in space rather than a direction.

If you need to transform many directions at once consider using TransformHandle.InverseTransformDirections instead as it is much faster than repeatedly calling this function.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // transform the world forward into local space:
        Vector3 relative;
        relative = transformHandle.InverseTransformDirection(Vector3.forward);
        Debug.Log(relative);
    }
}
```

Additional resources:TransformHandle.TransformDirection, TransformHandle.InverseTransformDirections, TransformHandle.InverseTransformPoint, TransformHandle.InverseTransformVector.
