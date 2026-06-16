<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color-a.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Alpha component of the color (0 is transparent, 1 is opaque).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public Color color = Color.white;    void Start()
    {
        color.a = 0.42f;
    }
}
```
