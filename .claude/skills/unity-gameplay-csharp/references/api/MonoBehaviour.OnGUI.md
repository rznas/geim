<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

OnGUI is called for rendering and handling GUI events.

OnGUI is the only function that can implement the "Immediate Mode" GUI (IMGUI) system for rendering and handling GUI events. Your OnGUI implementation might be called several times per frame (one call per event). For more information on GUI events see the Event reference. If the MonoBehaviour's enabled property is set to false, OnGUI() will not be called.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnGUI()
    {
        if (GUI.Button(new Rect(10, 10, 150, 100), "I am a button"))
        {
            print("You clicked the button!");
        }
    }
}
```

For more information, see the GUI Scripting Guide.
