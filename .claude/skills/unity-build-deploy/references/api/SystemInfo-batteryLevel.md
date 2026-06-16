<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-batteryLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current battery level (Read Only).

The current level of the battery, represented as a float between `0` and `1`.

 If the battery level is not available on your target platform, this property returns `-1`.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Check if the battery level is available
        if(SystemInfo.batteryLevel == -1)
        {
            Debug.Log("Battery level is not available!");
        }
        else
        {
            // Log the current battery level
            Debug.Log("Battery Level: " + SystemInfo.batteryLevel);            // Log a message when the battery level is low
            if (SystemInfo.batteryLevel > 0 && SystemInfo.batteryLevel < 0.3)
            {
                Debug.Log("Battery is low!");
            }
        }
    }
}
```

Additional resources: batteryStatus.
