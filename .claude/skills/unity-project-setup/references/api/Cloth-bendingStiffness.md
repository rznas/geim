<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cloth-bendingStiffness.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Bending stiffness of the cloth.

Must be between zero and one. Setting the value to zero disables bending stiffness simulation.
 In many cases, when you want a cloth to be more stiff, actually reducing the number of vertices will get you better results - and performance.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        GetComponent<Cloth>().bendingStiffness = 1;
    }
}
```
