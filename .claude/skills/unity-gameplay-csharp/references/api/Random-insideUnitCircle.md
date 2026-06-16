<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Random-insideUnitCircle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a random point inside or on a circle with radius 1.0 (Read Only).

Note that the probability space includes the perimeter of the circle because value, which is inclusive to 1.0, is used to acquire a random radius.

```csharp
using UnityEngine;public class ScriptExample : MonoBehaviour
{
    void Start()
    {
        // Sets the position to be somewhere inside a circle
        // with radius 5 and the center at zero. Note that
        // assigning a Vector2 to a Vector3 is fine - it will
        // just set the X and Y values.
        transform.position = Random.insideUnitCircle * 5;
    }
}
```
