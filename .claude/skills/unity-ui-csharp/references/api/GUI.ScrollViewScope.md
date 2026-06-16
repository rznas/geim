<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.ScrollViewScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disposable helper class for managing BeginScrollView / EndScrollView.

BeginScrollView is called at construction, and EndScrollView is called when the instance is disposed. ScrollViews let you make a smaller area on-screen look 'into' a much larger area, using scrollbars placed on the sides of the ScrollView.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    // The position of the scrolling viewport
    public Vector2 scrollPosition = Vector2.zero;
    void OnGUI()
    {
        // An absolute-positioned example: We make a scrollview that has a really large client
        // rect and put it in a small rect on the screen.
        using (var scrollScope = new GUI.ScrollViewScope(new Rect(10, 300, 100, 100), scrollPosition, new Rect(0, 0, 220, 200)))
        {
            scrollPosition = scrollScope.scrollPosition;            // Make four buttons - one in each corner. The coordinate system is defined
            // by the last parameter to the ScrollScope constructor.
            GUI.Button(new Rect(0, 0, 100, 20), "Top-left");
            GUI.Button(new Rect(120, 0, 100, 20), "Top-right");
            GUI.Button(new Rect(0, 180, 100, 20), "Bottom-left");
            GUI.Button(new Rect(120, 180, 100, 20), "Bottom-right");
        }
        // Now the scroll view is ended.
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| handleScrollWheel | Whether this ScrollView should handle scroll wheel events. (default: true). |
| scrollPosition | The modified scrollPosition. Feed this back into the variable you pass in, as shown in the example. |

### Constructors

| Constructor | Description |
| --- | --- |
| GUI.ScrollViewScope | Create a new ScrollViewScope and begin the corresponding ScrollView. |
