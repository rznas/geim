<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rect-y.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Y coordinate of the rectangle.

This value is the same as yMin, but setting it will move the rectangle rather than resize it.

```csharp
using UnityEngine;public class RectExample : MonoBehaviour
{
    void Start()
    {
        Rect rect = new Rect(10, 10, 50, 30);
        // prints: y = 10
        Debug.Log("y = " + rect.y);        rect.y = 20;
        // prints: (x:10, y:20, width:50, height:30)
        Debug.Log(rect);
    }
}
```
