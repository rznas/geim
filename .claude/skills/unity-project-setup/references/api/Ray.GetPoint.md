<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Ray.GetPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a point at `distance` units along the ray.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Ray r = new Ray();
        print(r.GetPoint(10)); // a point 10 units along the ray
    }
}
```
