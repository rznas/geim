<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Random-insideUnitSphere.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a random point inside or on a sphere with radius 1.0 (Read Only).

Note that the probability space includes the surface of the sphere because value, which is inclusive to 1.0, is used to acquire a random radius.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Sets the position to be somewhere inside a sphere
        // with radius 5 and the center at zero.        transform.position = Random.insideUnitSphere * 5;
    }
}
```
