<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rect-width.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The width of the rectangle, measured from the X position.

Setting this value will also change xMax.

```csharp
using UnityEngine;public class RectExample : MonoBehaviour
{
    // Use this for initialization
    void Start()
    {
        Rect rect = new Rect(10, 10, 50, 30);
        Debug.Log("width = " + rect.width); // prints: width = 50
        rect.width = 20;
        Debug.Log("new max x = " + rect.xMax); // prints: new max x = 30
    }
}
```
