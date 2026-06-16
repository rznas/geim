<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-graphicsDeviceVersion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The graphics API type and driver version used by the graphics device (Read Only).

Returns a string identifying low-level graphics API kind and driver version. In most cases when you need to detect which graphics API is being used it is much easier to use SystemInfo.graphicsDeviceType.

In case of OpenGL API, the returned string will contain "`OpenGL`" followed by version in "`major.minor`" format, followed by full version string in square brackets.

In case of Direct3D9 API, the returned string will contain "`Direct3D 9.0c`" followed by driver name and version in square brackets.

In case of Direct3D11 API, the returned string will contain "`Direct3D 11.0`" followed by feature level in square brackets.

Additional resources: SystemInfo.graphicsDeviceType, SystemInfo.graphicsDeviceName, SystemInfo.graphicsDeviceVendor.

```csharp
using UnityEngine;
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // Prints "OpenGL 2.0 [2.0 ATI-1.4.40]" on MacBook Pro running Mac OS X 10.4.8
        // Prints "Direct3D 9.0c [atiumdag.dll 7.14.10.471]" on MacBook Pro running Windows Vista
        print(SystemInfo.graphicsDeviceVersion);
    }
}
```
