<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Screen-sleepTimeout.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A power saving setting, allowing the screen to dim some time after the last active user interaction.

Most useful for handheld devices, allowing OS to preserve battery life in most efficient ways. Does nothing on non-handheld devices.

sleepTimeout is measured in seconds. The default value varies from platform to platform, generally being non-zero.

On mobile devices it would be useful to set sleepTimeout to SleepTimeout.NeverSleep for games using accelerometer as the main source of input. However, such games should allow screen dimming while in menu or paused. Currently you will only be able to set this property to one of the values predefined in SleepTimeout class. A get will return either one of the predefined values, or the actual number of seconds until screen gets dimmed, as specified in system preferences of the device.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Disable screen dimming
        Screen.sleepTimeout = SleepTimeout.NeverSleep;
    }
}
```

Additional resources: SleepTimeout.
