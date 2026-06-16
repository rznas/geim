<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Screen-fullScreen.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables full-screen mode for the application.

Use this property to toggle full-screen mode:

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Toggle fullscreen
        Screen.fullScreen = !Screen.fullScreen;
    }
}
```

A full-screen switch does not happen immediately; it happens when the current frame is finished.

**Notes:**

- `Screen.fullScreen` is read-only on iOS.
- When Stage Manager is enabled on iPadOS, the `Screen.fullScreen` remains true for the application built with full screen display mode. The application maintains the full screen resolution in supported orientations even when the Stage Manager scales the application.

Additional resources: SetResolution.
