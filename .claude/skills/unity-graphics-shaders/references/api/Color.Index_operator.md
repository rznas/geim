<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color.Index_operator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Access the r, g, b,a components using [0], [1], [2], [3] respectively.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Color color = Color.white;
    void Start()
    {
        //The same as color.g = 5
        color[1] = 5;
    }
}
```
