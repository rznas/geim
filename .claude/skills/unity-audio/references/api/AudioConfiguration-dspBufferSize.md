<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioConfiguration-dspBufferSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The length of the DSP buffer in samples determining the latency of sounds by the audio output device.

This buffer size only accounts for the size of a single DSP buffer. It doesn't include additional latency caused by multiple DSP buffers or buffers from your platform's audio system.

You can use AudioSettings.GetConfiguration.dspBufferSize or AudioSettings.GetDSPBufferSize to get the DSP buffer size but it's recommended you use AudioSettings.GetConfiguration.dspBufferSize. For a code example that shows each of the DSP buffer sizes, refer to AudioSettings.Reset.

```csharp
// This script changes the settings of the audio configuration programatically. 
// Attach this script to a GameObject in your Scene. Also assign an AudioSource component in the Inspector and 
// assign an audio clip to the AudioSource. using UnityEngine;public class AudioConfigurationExample : MonoBehaviour
{
    void Start()
    {
        AudioSource source = GetComponent<AudioSource>();        AudioConfiguration config = AudioSettings.GetConfiguration();        // Change each configuration to your preferred setting. 
        config.speakerMode = AudioSpeakerMode.Stereo;
        config.dspBufferSize = 64;        AudioSettings.Reset(config);
        // Play the audio. 
        source.Play();
    }
}
```
