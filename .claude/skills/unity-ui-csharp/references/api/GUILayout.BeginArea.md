<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.BeginArea.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| text | Optional text to display in the area. |
| image | Optional texture to display in the area. |
| content | Optional text, image and tooltip top display for this area. |
| style | The style to use. If left out, the empty GUIStyle (GUIStyle.none) is used, giving a transparent background. |

### Description

Begin a GUILayout block of GUI controls in a fixed screen area.

By default, any GUI controls made using GUILayout are placed in the top-left corner of the screen. If you want to place a series of automatically laid out controls in an arbitrary area, use GUILayout.BeginArea to define a new area for the automatic layouting system to use.

Additional resources: EndArea


 *Explained Area of the example.*

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void OnGUI()
    {
        // Starts an area to draw elements
        GUILayout.BeginArea(new Rect(10, 10, 100, 100));
        GUILayout.Button("Click me");
        GUILayout.Button("Or me");
        GUILayout.EndArea();
    }
}
```

This function is very useful when mixing GUILayout code. It must be matched with a call to EndArea. BeginArea / EndArea cannot be nested.
