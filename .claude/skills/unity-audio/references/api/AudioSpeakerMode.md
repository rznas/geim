<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSpeakerMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The speaker configurations that Unity supports.

Unity supports multiple speaker types. Each speaker type has a different number of channels and is suitable for different device types and situations. The operating system (OS) and hardware determine the final output. Unity requests a mode, but the system might override it. Always check the actual mode at runtime.

The following are common uses for the speaker modes:

- Stereo is the standard default for most applications.
- Use Mono for accessibility reasons.
- Use 5.1 or 7.1 for high-end PC and console setups, home televisions, theaters.
- Use Quad and 5.0 for specific installations.
- Only use Pro Logic if you must support matrix decoding.

Use AudioSettings.speakerMode to request the device to use a specific speaker mode. The device might not accept or support your requested speaker mode. In that case:

- On some platforms, Unity automatically reduces the audio channel count (downmixes) to one your device supports.
- On other platforms, Unity runs the device's native channel count.

To set your project's default speaker mode, go to the Audio Manager: go to **Edit** > **Project Settings** > **Audio** and set **Default Speaker Mode** to your preferred speaker mode.

The following example demonstrates how to check the current speaker mode at runtime.

```csharp
using UnityEngine;public class SpeakerModeExample : MonoBehaviour
{
    void Start()
    {
        Debug.Log("Current Speaker Mode: " + AudioSettings.speakerMode);
    }
}
```

Additional resources: AudioSettings, Audio Manager.

### Properties

| Property | Description |
| --- | --- |
| Mono | The speakers are mono and contain one channel. |
| Stereo | The speakers are stereo and contain two channels. |
| Quad | The Quad 4.0 speaker setup which contains four channels. |
| Surround | The Surround 5.0 speaker setup which contains five channels. |
| Mode5point1 | The Surround 5.1 speaker setup which contains six channels. |
| Mode7point1 | The Surround 7.1 speaker setup which contains eight channels. |
| Prologic | Stereo output, but data is encoded in a way that is picked up by a Pro Logic or Pro Logic 2 decoder and split into a 5.1 speaker setup. |
