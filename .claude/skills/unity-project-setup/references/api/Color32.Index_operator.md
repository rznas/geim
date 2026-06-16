<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color32.Index_operator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Access the red (r), green (g), blue (b), and alpha (a) color components using [0], [1], [2], [3] respectively.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Color32 color = new Color32(0, 0, 0, 0);
    void Start()
    {
        //The same as color.g = 255
        color[1] = 255;
    }
}
```
