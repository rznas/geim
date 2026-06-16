<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform-root.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the topmost transform in the hierarchy.

(This never returns null, if this Transform doesn't have a parent it returns itself.)

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Is a collision between two objects with different roots?
    void OnCollisionEnter(Collision collision)
    {
        if (collision.transform.root != transform.root)
        {
            print("The colliding objects are not in the same hierarchy");
        }
    }
}
```
