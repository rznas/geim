<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSettings.Reset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| config | The new configuration to be used. |

### Returns

**bool** True if all settings could be successfully applied.

### Description

Changes the device configuration and invokes the AudioSettings.OnAudioConfigurationChanged delegate with the argument `deviceWasChanged=false`. There's no guarantee that the exact settings specified are used, but Unity automatically uses the closest match that it supports. **Note:** This can cause main thread stalls if `AudioSettings.Reset` is called when objects are loading asynchronously.

```csharp
using UnityEngine;
using System.Collections;public class TestAudioConfiguration : MonoBehaviour
{
    void Start()
    {
        AudioSettings.OnAudioConfigurationChanged += OnAudioConfigurationChanged;
    }    void OnAudioConfigurationChanged(bool deviceWasChanged)
    {
        Debug.Log(deviceWasChanged ? "Device was changed" : "Reset was called");
        if (deviceWasChanged)
        {
            AudioConfiguration config = AudioSettings.GetConfiguration();
            config.dspBufferSize = 64;
            AudioSettings.Reset(config);
        }
        GetComponent<AudioSource>().Play();
    }    static int[] validSpeakerModes =
    {
        (int)AudioSpeakerMode.Mono,
        (int)AudioSpeakerMode.Stereo,
        (int)AudioSpeakerMode.Quad,
        (int)AudioSpeakerMode.Surround,
        (int)AudioSpeakerMode.Mode5point1,
        (int)AudioSpeakerMode.Mode7point1
    };    static int[] validDSPBufferSizes =
    {
        32, 64, 128, 256, 340, 480, 512, 1024, 2048, 4096, 8192
    };    static int[] validSampleRates =
    {
        11025, 22050, 44100, 48000, 88200, 96000,
    };    static int[] validNumRealVoices =
    {
        1, 2, 4, 8, 16, 32, 50, 64, 100, 128, 256, 512,
    };    static int[] validNumVirtualVoices =
    {
        1, 2, 4, 8, 16, 32, 50, 64, 100, 128, 256, 512,
    };    int GUIRow(string name, int[] valid, int value, ref bool modified)
    {
        GUILayout.BeginHorizontal();
        GUILayout.Button(name + "=" + value);
        for (int i = 0; i < valid.Length; i++)
        {
            string s = valid[i].ToString();
            if (valid[i] == value)
                s = "[" + s + "]";
            if (GUILayout.Button(s))
            {
                value = valid[i];
                modified = true;
            }
        }
        GUILayout.EndHorizontal();
        return value;
    }    void OnGUI()
    {
        AudioSource source = GetComponent<AudioSource>();
        bool modified = false;        AudioConfiguration config = AudioSettings.GetConfiguration();        config.speakerMode = (AudioSpeakerMode)GUIRow("speakerMode", validSpeakerModes, (int)config.speakerMode, ref modified);
        config.dspBufferSize = GUIRow("dspBufferSize", validDSPBufferSizes, config.dspBufferSize, ref modified);
        config.sampleRate = GUIRow("sampleRate", validSampleRates, config.sampleRate, ref modified);
        config.numRealVoices = GUIRow("RealVoices", validNumRealVoices, config.numRealVoices, ref modified);
        config.numVirtualVoices = GUIRow("numVirtualVoices", validNumVirtualVoices, config.numVirtualVoices, ref modified);        if (modified)
            AudioSettings.Reset(config);        if (GUILayout.Button("Start"))
            source.Play();        if (GUILayout.Button("Stop"))
            source.Stop();
    }
}
```
