<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-graphicsDeviceVendor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The vendor of the graphics device (Read Only).

This is the vendor of user's graphics card, as reported by the graphics driver.

Additional resources: SystemInfo.graphicsDeviceName, SystemInfo.graphicsDeviceVersion.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Prints using the following format - "ATI Technologies Inc." on MacBook Pro running Mac OS X 10.4.8
        print(SystemInfo.graphicsDeviceVendor);
    }
}
```
