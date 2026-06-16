<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.InverseTransformDirection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transforms a `direction` from world space to local space. The opposite of Transform.TransformDirection.

This operation is not affected by scale or position of the transform. The transformed vector has the same length as the original.

If you need the inverse operation to transform from local space to world space you can use Transform.TransformDirection

You should use Transform.InverseTransformPoint if the vector represents a position in space rather than a direction.

If you need to transform many directions at once consider using Transform.InverseTransformDirections instead as it is much faster than repeatedly calling this function.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // transform the world forward into local space:
        Vector3 relative;
        relative = transform.InverseTransformDirection(Vector3.forward);
        Debug.Log(relative);
    }
}
```

Additional resources:Transform.TransformDirection, Transform.InverseTransformDirections, Transform.InverseTransformPoint, Transform.InverseTransformVector.

### Description

Transforms the direction `x`, `y`, `z` from world space to local space. The opposite of Transform.TransformDirection.

This operation is not affected by scale or position of the transform. The transformed vector has the same length as the original.

If you need the inverse operation to transform from local space to world space you can use Transform.TransformDirection

You should use Transform.InverseTransformPoint if the vector represents a position in space rather than a direction.

If you need to transform many directions at once consider using Transform.InverseTransformDirections instead as it is much faster than repeatedly calling this function.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // transform the world forward into local space:
        Vector3 relative;
        relative = transform.InverseTransformDirection(Vector3.forward);
        Debug.Log(relative);
    }
}
```

Additional resources:Transform.TransformDirection, Transform.InverseTransformDirections, Transform.InverseTransformPoint, Transform.InverseTransformVector.
