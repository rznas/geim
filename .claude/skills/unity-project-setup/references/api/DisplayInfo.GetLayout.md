<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DisplayInfo.GetLayout.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| displayLayout | A list to fill with information about connected displays. |

### Description

Retrieves information about the connected displays and populates a list with properties such as display name, resolution, refresh rate, and other relevant attributes.

This function does not allocate managed memory outside of the Editor. You can call this method without generating garbage or triggering the garbage collector. This function is supported only on Windows, macOS, Linux, and embedded platforms.

```csharp
using System.Collections.Generic;
using UnityEngine;public class DisplayInfoTest : MonoBehaviour
{
    private List<DisplayInfo> displays = new List<DisplayInfo>();    void Start()
    {
        DisplayInfo.GetLayout(displays);
        Debug.Log("Display count: " + displays.Count);
        Debug.Log("===");
        foreach (var display in displays)
        {
            Debug.Log("Display name: " + display.name);
            Debug.Log("Display width: " + display.width);
            Debug.Log("Display height: " + display.height);
            Debug.Log("===");
        }
    }
}
```
