<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Random-onUnitCircle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a random point on the circumference of a circle with radius 1.0 (Read Only).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Sets the Rigidbody2D velocity to 10 and in a random 2D direction.        GetComponent<Rigidbody2D>().linearVelocity = Random.onUnitCircle * 10;
    }
}
```
