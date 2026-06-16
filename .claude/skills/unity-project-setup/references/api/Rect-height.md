<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rect-height.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The height of the rectangle, measured from the Y position.

Setting this value will also change yMax.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Rect rect = new Rect(0, 0, 10, 10);
        print(rect.height);
        rect.height = 20;
    }
}
```
