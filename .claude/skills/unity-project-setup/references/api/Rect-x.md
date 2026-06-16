<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rect-x.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The X coordinate of the rectangle.

This value is the same as xMin, but setting it will move the rectangle rather than resize it.

```csharp
using UnityEngine;public class RectExample : MonoBehaviour
{
    // Use this for initialization
    void Start()
    {
        Rect rect = new Rect(10, 10, 50, 30);
        Debug.Log("x = " + rect.x); // -- prints: x = 10
        rect.x = 20;
        Debug.Log(rect); // prints: (x:20, y:10, width:50, height:30)
    }
}
```
