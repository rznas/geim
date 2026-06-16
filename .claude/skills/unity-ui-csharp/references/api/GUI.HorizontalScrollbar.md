<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.HorizontalScrollbar.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the scrollbar. |
| value | The position between min and max. |
| size | How much can we see? |
| leftValue | The value at the left end of the scrollbar. |
| rightValue | The value at the right end of the scrollbar. |
| style | The style to use for the scrollbar background. If left out, the `horizontalScrollbar` style from the current GUISkin is used. |

### Returns

**float** The modified value. This can be changed by the user by dragging the scrollbar, or clicking the arrows at the end.

### Description

Make a horizontal scrollbar. Scrollbars are what you use to scroll through a document. Most likely, you want to use scrollViews instead.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public float hSbarValue;    void OnGUI()
    {
        hSbarValue = GUI.HorizontalScrollbar(new Rect(25, 25, 100, 30), hSbarValue, 1.0F, 0.0F, 10.0F);
    }
}
```

**Finding extra elements:** 
 
The styles of the buttons at the end of the scrollbar are searched for in the current skin by adding "leftbutton" and "rightbutton" to the style name. The name of the scrollbar thumb (the thing you drag) is found by appending "thumb" to the style name.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public float scrollPos = 0.5f;    // This will use the following style names to determine the size / placement of the buttons
    // MyScrollbarleftbutton    - Name of style used for the left button.
    // MyScrollbarrightbutton - Name of style used for the right button.
    // MyScrollbarthumb         - Name of style used for the draggable thumb.
    void OnGUI()
    {
        scrollPos = GUI.HorizontalScrollbar(new Rect(0, 0, 100, 20),  scrollPos, 1.0f, 0.0f, 100.0f, "Scroll");
    }
}
```
