<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSettings-driverCapabilities.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the speaker mode capability of the current audio driver. (Read Only)

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Set the speaker mode to that of the system settings.    void Start()
    {
        AudioSettings.speakerMode = AudioSettings.driverCapabilities;
    }
}
```
