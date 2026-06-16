<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Apple.ReplayKit.ReplayKit.APIAvailable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A boolean that indicates whether the ReplayKit API is available (where True means available). (Read Only)

Check the value of this property before making other ReplayKit calls. On iOS platforms prior to iOS 9, this property will have a value of false.

```csharp
using System;
using UnityEngine;
#if PLATFORM_IOS
using UnityEngine.iOS;
using UnityEngine.Apple.ReplayKit;public class Replay : MonoBehaviour
{
    void OnGUI()
    {
        if (!ReplayKit.APIAvailable)
        {
            return;
        }
        // ... ReplayKit calls go here ...
    }
}
#endif
```
