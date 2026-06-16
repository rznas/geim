<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RectTransform-rect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The calculated rectangle in the local space of the Transform.

Unity automatically attaches these to UI elements. Manipulate aspects of the rectangle in the Inspector such as the position, dimensions, rotation, and scale. This is read-only in a script.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    RectTransform rectTransform;    void Start()
    {
        //Fetch the RectTransform from the GameObject
        rectTransform = GetComponent<RectTransform>();
    }    void OnGUI()
    {
        //The Label shows the current Rect settings on the screen
        GUI.Label(new Rect(20, 20, 150, 80), "Rect : " + rectTransform.rect);
    }
}
```
