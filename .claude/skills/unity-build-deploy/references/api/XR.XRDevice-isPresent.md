<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDevice-isPresent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Successfully detected a XR device in working order.

This property is obsolete and will be removed in an upcoming release.

Instead, find the active XRDisplaySubsystem and check to see if it is running. The example illustrates this process.

```csharp
using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR;
internal static class ExampleUtil
{
    public static bool isPresent()
    {
        var xrDisplaySubsystems = new List<XRDisplaySubsystem>();
        SubsystemManager.GetInstances<XRDisplaySubsystem>(xrDisplaySubsystems);
        foreach (var xrDisplay in xrDisplaySubsystems)
        {
            if (xrDisplay.running)
            {
                return true;
            }
        }
        return false;
    }
}
public class CheckXRDisplay : MonoBehaviour
{
    void Awake()
    {
        Debug.Log("Do we have an Active Display? " + ExampleUtil.isPresent().ToString());
    }
}
```
