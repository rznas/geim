<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rect-position.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The X and Y position of the rectangle.

This is the same as min, except that setting it will move the rectangle rather than resize it.

```csharp
using UnityEngine;// Show Rect, the position selected randomly.public class RectExample : MonoBehaviour
{
    private Rect rect;    void Start()
    {
        rect = new Rect(600 * Random.value, 450 * Random.value, 200, 150);
    }    void Update()
    {
        if (Input.GetKeyDown("space"))
        {
            rect.position = new Vector2(600 * Random.value, 450 * Random.value);
        }
    }    // display a rectangle
    void OnGUI()
    {
        GUI.Box(rect, "");
    }
}
```
