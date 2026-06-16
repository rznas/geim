<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Microphone-devices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A list of available microphone devices, identified by name.

You can use the name with the Start and End functions to specify which microphone you wish to start/stop recording.

**Note**: On the Web platform, the list remains empty until the user provides authorization. Request authorization using Application.RequestUserAuthorization.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Get list of Microphone devices and print the names to the log
    void Start()
    {
        foreach (var device in Microphone.devices)
        {
            Debug.Log("Name: " + device);
        }
    }
}
```

Additional resources: Start, End, IsRecording.
