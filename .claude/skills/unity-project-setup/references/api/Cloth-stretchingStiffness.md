<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cloth-stretchingStiffness.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stretching stiffness of the cloth.

Must be greater than zero and smaller or equal to one.
 In many cases, when you want a cloth to be more stiff, actually reducing the number of vertices will get you better results - and performance.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        GetComponent<Cloth>().stretchingStiffness = 1;
    }
}
```
