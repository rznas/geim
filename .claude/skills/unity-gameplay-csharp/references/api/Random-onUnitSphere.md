<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Random-onUnitSphere.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a random point on the surface of a sphere with radius 1.0 (Read Only).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Sets the rigidbody velocity to 10 and in a random direction.        GetComponent<Rigidbody>().velocity = Random.onUnitSphere * 10;
    }
}
```
