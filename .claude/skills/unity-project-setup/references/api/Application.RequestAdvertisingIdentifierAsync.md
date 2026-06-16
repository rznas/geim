<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application.RequestAdvertisingIdentifierAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| delegateMethod | Delegate method. |

### Returns

**bool** Returns true if successful, and false for platforms which do not support Advertising Identifiers. In this case, the delegate method is not invoked.

### Description

Request an advertising ID for iOS and UWP.

```csharp
using System;
using UnityEngine;public class SampleBehaviour : MonoBehaviour
{
    public void Start()
    {
        Application.RequestAdvertisingIdentifierAsync(
            (string advertisingId, bool trackingEnabled, string error) =>
            { Debug.Log("advertisingId " + advertisingId + " " + trackingEnabled + " " + error); }
        );
    }
}
```
