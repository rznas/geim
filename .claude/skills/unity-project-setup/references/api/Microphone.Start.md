<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Microphone.Start.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| deviceName | The name of the device. |
| loop | Indicates whether the recording should continue recording if lengthSec is reached, and wrap around and record from the beginning of the AudioClip. |
| lengthSec | Is the length of the AudioClip produced by the recording. |
| frequency | The sample rate of the AudioClip produced by the recording. Use AudioSettings.outputSampleRate so the recording matches the project's output sample rate. |

### Returns

**AudioClip** The function returns null if the recording fails to start.

### Description

Start Recording with device.

If you pass a null or empty string for the device name then the default microphone is used. You can get a list of available microphone devices from the devices property and the range of sample rates supported by a microphone from the GetDeviceCaps property.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Start recording with built-in Microphone and play the recorded audio right away
    void Start()
    {
        AudioSource audioSource = GetComponent<AudioSource>();
        audioSource.clip = Microphone.Start("Built-in Microphone", true, 10, AudioSettings.outputSampleRate);
        audioSource.Play();
    }
}
```
