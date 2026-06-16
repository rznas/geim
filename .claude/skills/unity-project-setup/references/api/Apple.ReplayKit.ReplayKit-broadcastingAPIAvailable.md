<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Apple.ReplayKit.ReplayKit-broadcastingAPIAvailable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A Boolean that indicates whether ReplayKit broadcasting API is available (true means available) (Read Only). Check the value of this property before making ReplayKit broadcasting API calls. On iOS versions prior to iOS 10, this property will have a value of false.

```csharp
using System;
using UnityEngine;
#if PLATFORM_IOS
using UnityEngine.iOS;
using UnityEngine.Apple.ReplayKit;public class Replay : MonoBehaviour
{
    void OnGUI()
    {
        if (!ReplayKit.broadcastingAPIAvailable)
        {
            return;
        }
        // ... ReplayKit broadcast calls go here ...
    }
}
#endif
```
