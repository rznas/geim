<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.BeginGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the group. |
| text | Text to display on the group. |
| image | Texture to display on the group. |
| content | Text, image and tooltip for this group. If supplied, any mouse clicks are "captured" by the group and not If left out, no background is rendered, and mouse clicks are passed. |
| style | The style to use for the background. |

### Description

Begin a group. Must be matched with a call to EndGroup.

When you begin a group, the coordinate system for GUI controls are set so (0,0) is the top-left corner of the group. All controls are clipped to the group. Groups can be nested - if they are, children are clipped to their parents.

This is very useful when moving a bunch of GUI elements around on screen. A common use case is designing your menus to fit on a specific screen size, then centering the GUI on larger displays. Additional resources: matrix, BeginScrollView.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnGUI()
    {
        // Constrain all drawing to be within a 800x600 pixel area centered on the screen.
        GUI.BeginGroup(new Rect(Screen.width / 2 - 400, Screen.height / 2 - 300, 800, 600));        // Draw a box in the new coordinate space defined by the BeginGroup.
        // Notice how (0,0) has now been moved on-screen
        GUI.Box(new Rect(0, 0, 800, 600), "This box is now centered! - here you would put your main menu");        // We need to match all BeginGroup calls with an EndGroup
        GUI.EndGroup();
    }
}
```
