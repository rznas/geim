<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector4.Index_operator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Access the x, y, z, w components using [0], [1], [2], [3] respectively.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Vector4  p = new Vector4();
        p[3] = 5; // the same as p.w = 5
    }
}
```
