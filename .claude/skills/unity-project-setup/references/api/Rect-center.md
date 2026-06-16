<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rect-center.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The position of the center of the rectangle.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Rect rect = new Rect(0, 0, 100, 100);
        print(rect.center);
        rect.center = new Vector2(50, 50);
    }
}
```
