<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compass-timestamp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates the time elapsed since the compass heading was last updated. (Read Only)

**Android**: The time elapsed is represented in seconds since the device was last turned on.

**iOS**: The time elapsed is represented in seconds since the Unix epoch January 1, 1970.

```csharp
using UnityEngine;public class CompassTimeStamp : MonoBehaviour
{
    private double previousTimeStamp = 0;    private void Start()
    {
        Input.location.Start();
        Input.compass.enabled = true;
        Debug.Log($"compass.enabled: {Input.compass.enabled}");
        RecordPreviousTimeStamp();
    }
    void Update()
    {
        Debug.Log($"frame delta: {Time.deltaTime} compass timestamp: {Input.compass.timestamp} compass delta: {Input.compass.timestamp - previousTimeStamp}");
        RecordPreviousTimeStamp();
    }    private void RecordPreviousTimeStamp()
    {
        previousTimeStamp = Input.compass.timestamp;
    }
}
```
