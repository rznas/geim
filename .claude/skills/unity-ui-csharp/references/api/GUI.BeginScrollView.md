<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.BeginScrollView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the ScrollView. |
| scrollPosition | The pixel distance that the view is scrolled in the X and Y directions. |
| viewRect | The rectangle used inside the scrollview. |
| horizontalScrollbar | Optional GUIStyle to use for the horizontal scrollbar. If left out, the `horizontalScrollbar` style from the current GUISkin is used. |
| verticalScrollbar | Optional GUIStyle to use for the vertical scrollbar. If left out, the `verticalScrollbar` style from the current GUISkin is used. |
| alwaysShowHorizontal | Optional parameter to always show the horizontal scrollbar. If false or left out, it is only shown when `viewRect` is wider than `position`. |
| alwaysShowVertical | Optional parameter to always show the vertical scrollbar. If false or left out, it is only shown when `viewRect` is taller than `position`. |

### Returns

**Vector2** The modified scrollPosition. Feed this back into the variable you pass in, as shown in the example.

### Description

Begin a scrolling view inside your GUI.

ScrollViews let you make a smaller area on-screen look 'into' a much larger area, using scrollbars placed on the sides of the ScrollView.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // The position on of the scrolling viewport
    public Vector2 scrollPosition = Vector2.zero;    void OnGUI()
    {
        // An absolute-positioned example: We make a scrollview that has a really large client
        // rect and put it in a small rect on the screen.
        scrollPosition = GUI.BeginScrollView(new Rect(10, 300, 100, 100), scrollPosition, new Rect(0, 0, 220, 200));        // Make four buttons - one in each corner. The coordinate system is defined
        // by the last parameter to BeginScrollView.
        GUI.Button(new Rect(0, 0, 100, 20), "Top-left");
        GUI.Button(new Rect(120, 0, 100, 20), "Top-right");
        GUI.Button(new Rect(0, 180, 100, 20), "Bottom-left");
        GUI.Button(new Rect(120, 180, 100, 20), "Bottom-right");        // End the scroll view that we began above.
        GUI.EndScrollView();
    }
}
```
