<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.EndGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

End a group.

Should be attached with GUI.BeginGroup.

Additional resources: BeginGroup.

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
