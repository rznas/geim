<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Screen-height.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current height of the screen window in pixels (Read Only).

This is the actual height of the Player window. In full-screen mode, it reflects the current resolution.

**Note**: When accessed from the Editor events, such as ContextMenu methods, inspector enable/disable actions, or custom Editor scripts, Screen.width and `Screen.height` return the current Game view window resolution in the Unity Editor. These properties do not reflect the resolution of the Player or target device in these contexts, including Simulator mode.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        //Output the current screen window height in the console
        Debug.Log("Screen Height : " + Screen.height);
    }
}
```
