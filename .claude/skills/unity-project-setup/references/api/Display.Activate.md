<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Display.Activate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Activates an external display. For example, a secondary monitor connected to the system.

Creates a window with screen width and screen height, and with the default refresh rate.

Displays have the following indices in the Display.displays array:

- The primary display is `0`.
- Secondary displays are `1` to `7`.

Make sure an external display is connected before you activate it.

This method works only on desktop platforms.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Check the number of monitors connected.
        if (Display.displays.Length > 1)
        {
            // Activate the display 1 (second monitor connected to the system).
            Display.displays[1].Activate();
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| width | Windows platforms only. Width of the window to open. |
| height | Windows platforms only. Height of the window to open. |
| refreshRate | Refresh Rate of the window to open. |

### Description

Windows platforms only. Activates an external display with a specific width, height and refresh rate. For example, a secondary monitor connected to the system.

This method only works fully on Windows platforms. If you use this method on Linux or macOS platforms, the display uses the screen width and height. 

Displays have the following indices in the Display.displays array:

- The primary display is `0`.
- Secondary displays are `1` to `7`.

Make sure an external display is connected before you activate it.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Check the number of monitors connected.
        if (Display.displays.Length > 1)
        {
            // Activate the display 1 (second monitor connected to the system).
            Display.displays[1].Activate(0, 0, new RefreshRate() { numerator = 60, denominator = 1 });
        }
    }
}
```
