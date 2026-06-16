<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.Index_operator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Access the x, y, z, w components using [0], [1], [2], [3] respectively.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Quaternion p = new Quaternion();
        p[3] = 0.5f; // the same as p.w = 0.5
    }
}
```
