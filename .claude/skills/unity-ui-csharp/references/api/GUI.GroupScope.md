<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.GroupScope.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disposable helper class for managing BeginGroup / EndGroup.

BeginGroup is called at construction, and EndGroup is called when the instance is disposed. When you begin a group, the coordinate system for GUI controls are set so (0,0) is the top-left corner of the group. All controls are clipped to the group. Groups can be nested - if they are, children are clipped to their parents.

This is very useful when moving a bunch of GUI elements around on screen. A common use case is designing your menus to fit on a specific screen size, then centering the GUI on larger displays.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        // Constrain all drawing to be within a 800x600 pixel area centered on the screen.
        using (var groupScope = new GUI.GroupScope(new Rect(Screen.width / 2 - 400, Screen.height / 2 - 300, 800, 600)))
        {
            // Draw a box in the new coordinate space defined by the BeginGroup.
            // Notice how (0,0) has now been moved on-screen.
            GUI.Box(new Rect(0, 0, 800, 600), "This box is now centered! - here you would put your main menu");
        }
        // The group is now ended.
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| GUI.GroupScope | Create a new GroupScope and begin the corresponding group. |
