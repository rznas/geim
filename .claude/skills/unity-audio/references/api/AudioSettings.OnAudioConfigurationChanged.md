<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSettings.OnAudioConfigurationChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | This parameter is true if the user changes the audio output device during runtime. |

### Description

Unity calls this event whenever the global audio settings change.

The settings change when you use AudioSettings.Reset, but an external factor can also change them. For example:

- The OS control panel changes the sample rate.
- The user changes the default output device, for example if they plug in an HDMI monitor or a USB headset.

For a code example with a large range of setting options, refer to AudioSettings.Reset.

```csharp
// This script creates a row of buttons, one for each AudioSpeakerMode. 
// When you press one of the buttons, Unity will play the audio with the new speaker mode. 
// Attach this script and an AudioSource component (with an audio clip) to a GameObject in your Scene.
// If any of the options are not available on your system, it will throw an error. using UnityEngine;
using System;public class AudioConfigurationChangedExample : MonoBehaviour
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
            config.dspBufferSize = 512;
            if (!AudioSettings.Reset(config))
            {
                Debug.LogError("Failed to reset AudioConfiguration after device change.");
            }
        }
        GetComponent<AudioSource>().Play();
    }    AudioSpeakerMode GUIRow(AudioSpeakerMode value, ref bool modified)
    {
        // Add all the values in the enum to an array. 
        Array audioSpeakerModes = Enum.GetValues(typeof(AudioSpeakerMode));        GUILayout.BeginHorizontal();
        GUILayout.Button("Speaker mode = " + value.ToString());        // Loop through the AudioSpeakerMode enum. 
        foreach (AudioSpeakerMode speakerMode in audioSpeakerModes)
        {
            // Set the button name to the name of the enum value. 
            string s = speakerMode.ToString();            // Add brackets to the button name to show the current selected button. 
            if (speakerMode == value)
                s = "[" + s + "]";            // Create a button for each valid speaker mode. 
            if (GUILayout.Button(s))
            {
                value = speakerMode;
                modified = true;
            }
        }        GUILayout.EndHorizontal();
        return value;
    }    void OnGUI()
    {
        bool modified = false;        AudioConfiguration config = AudioSettings.GetConfiguration();        config.speakerMode = GUIRow(config.speakerMode, ref modified);        if (modified)
            AudioSettings.Reset(config);
    }
}
```
