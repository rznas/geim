<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object-operator_ne.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Compares if two objects refer to a different object.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Transform target;
    void Update()
    {
        // the target object does not refer to the same object as our transform
        if (target != transform)
        {
            print("Another object");
        }
    }
}
```
