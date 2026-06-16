<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-graphicsDeviceName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The name of the graphics device (Read Only).

This is the name of user's graphics card, as reported by the graphics driver.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Prints using the following format - "ATI Radeon X1600 OpenGL Engine" on MacBook Pro running Mac OS X 10.4.8
        print(SystemInfo.graphicsDeviceName);
    }
}
```

Note that the same graphics card can be reported by different names depending on the operating system, driver and so on. If you want to reliably identify some specific card, use SystemInfo.graphicsDeviceID SystemInfo.graphicsDeviceVendorID.

Additional resources: SystemInfo.graphicsDeviceID, SystemInfo.graphicsDeviceVendor, SystemInfo.graphicsDeviceVersion.
