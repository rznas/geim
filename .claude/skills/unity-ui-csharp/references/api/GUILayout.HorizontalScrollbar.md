<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.HorizontalScrollbar.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The position between min and max. |
| size | How much can we see? |
| leftValue | The value at the left end of the scrollbar. |
| rightValue | The value at the right end of the scrollbar. |
| style | The style to use for the scrollbar background. If left out, the `horizontalScrollbar` style from the current GUISkin is used. |
| options | An optional list of layout options that specify extra layouting properties. Any values passed in here will override settings defined by the `style`. |

### Returns

**float** The modified value. This can be changed by the user by dragging the scrollbar, or clicking the arrows at the end.

### Description

Make a horizontal scrollbar.

A scrollbar control returns a float value that represents the position of the draggable "thumb" withtin the bar. You can use the value to adjust another GUI element to reflect the scroll position. However, most scrollable views can be handled more easily using a *scroll view* control.


 *Horizontal Scrollbar in the Game View.*

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    float hSbarValue;    void OnGUI()
    {
        hSbarValue = GUILayout.HorizontalScrollbar(hSbarValue, 1.0f, 0.0f, 10.0f);
        GUILayout.Label("This is a text that makes space");
    }
}
```

The styles of the scroll buttons at the end of the bar can be located in the current skin by adding "leftbutton" and "rightbutton" to the style name. The name of the scrollbar thumb (the thing you drag) is found by appending "thumb" to the style name.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public float scrollPos = 0.5F;
    // This will use the following style names to determine the size / placement of the buttons
    // MyScrollbarleftbutton    - Name of style used for the left button.
    // MyScrollbarrightbutton - Name of style used for the right button.
    // MyScrollbarthumb         - Name of style used for the draggable thumb.
    void OnGUI()
    {
        scrollPos = GUILayout.HorizontalScrollbar(scrollPos, 1, 0, 100, "MyScrollbar");
    }
}
```

Additional resources: BeginScrollView, VerticalScrollbar.
