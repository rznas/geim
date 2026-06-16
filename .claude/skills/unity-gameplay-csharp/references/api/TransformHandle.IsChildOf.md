<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle.IsChildOf.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is this transform a child of `parent`?

Returns a boolean value that indicates whether the transform is a child of a given transform. true if this transform is a child, deep child (child of a child) or identical to this transform, otherwise false.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnTriggerEnter(Collider col)
    {
        // Ignore trigger events if between this collider and colliders in children
        // Eg. when you have a complex character with multiple triggers colliders.
        if (col.transformHandle.IsChildOf(transformHandle))
        {
            return;
        }        print("Do something here");
    }
}
```
