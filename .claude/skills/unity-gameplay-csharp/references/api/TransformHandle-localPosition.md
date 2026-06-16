<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle-localPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Position of the transform relative to the parent transform.

If the transform has no parent, it's the same as TransformHandle.position.

Like most Transform operations, localPosition may not always be accessible, particularly during certain operations such as an Undo operation or before the transform hierarchy is fully initialized. For example, OnValidate() can be invoked before the hierarchy is completely set up, potentially causing a logged error. If you attempt to access localPosition at an incompatible time, it will return Vector3.zero instead of the actual value.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        // Move the object to the same position as the parent:
        TransformHandle thisTransformHandle = transformHandle;
        thisTransformHandle.localPosition = new Vector3(0, 0, 0);        // Get the y component of the position relative to the parent
        // and print it to the Console
        print(transformHandle.localPosition.y);
    }
}
```

Note that the parent transform's world rotation and scale are applied to the local position when calculating the world position. This means that while 1 unit in TransformHandle.position is always 1 unit, 1 unit in TransformHandle.localPosition will get scaled by the scale of all ancestors.
