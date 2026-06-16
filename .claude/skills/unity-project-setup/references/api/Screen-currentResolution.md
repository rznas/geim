<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Screen-currentResolution.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current screen resolution (Read Only).

Returns the current screen resolution (read only). If the player is running in windowed mode, this returns the current resolution of the desktop. If you are working with VR devices, use XRSettings.eyeTextureWidth and XRSettings.eyeTextureHeight instead.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        print(Screen.currentResolution);
    }
}
```
