<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.Inverse.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the Inverse of `rotation`.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Sets this transform to have the opposite rotation of the target    Transform target;
    void Update()
    {
        transform.rotation = Quaternion.Inverse(target.rotation);
    }
}
```
