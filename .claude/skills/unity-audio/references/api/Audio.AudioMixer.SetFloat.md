<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.AudioMixer.SetFloat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of an exposed Audio Mixer group parameter. To expose a parameter, go to the Audio Mixer group's Inspector window, right click the parameter you want to expose, and choose **Expose [parameter name] to script**. |
| value | Use to set the exposed Audio Mixer group parameter to a new value. |

### Returns

**bool** Returns false if the exposed parameter was not found or snapshots are currently being edited.

### Description

AudioMixer.SetFloat sets the value of the exposed parameter specified. Once you call this function, mixer snapshots will no longer control the exposed parameter, and you can only modify the parameter using AudioMixer.SetFloat.

**Note:** Don’t call AudioMixer.SetFloat in the following event functions as it can result in unexpected behavior:

- MonoBehaviour.Awake
- MonoBehaviour.OnEnable
- RuntimeInitializeLoadType.AfterSceneLoad

Instead, call AudioMixer.SetFloat in MonoBehaviour.Start or any event function Unity calls afterwards in Order of execution for event functions.

To see your exposed parameters,

1. Double click on your audio mixer. This opens the **Audio Mixer** window.
2. At the top right of the Audio Mixer tab, click on the **Exposed Parameters** button to show the list of exposed parameters.

To rename or remove a parameter, right click the item in the list. 

If the parameter you want to expose isn't in the list, you need to expose the parameter. To expose a parameter, right click the parameter you want to expose in the Audio Mixer Inspector window, and choose **Expose [parameter name] to script**.

```csharp
using System;
using UnityEngine;
using UnityEngine.Audio;public class MixerVolumeController : MonoBehaviour
{
    // The range of the volume slider on a mixer group
    const float minVolume = -80f;
    const float maxVolume = 20f;    public AudioMixer mixer;    [Range(minVolume, maxVolume)]
    public float volume;    float previousVolume;    void Update()
    {        // Sets the exposed parameter "volume" in the audio mixer,
        // In this example the parameter is assumed to be the volume of a mixer group.
        // It could be any other exposable mixer parameter.
        if (!Mathf.Approximately(volume, previousVolume))
        {
            mixer.SetFloat("volume", volume);
        }        previousVolume = volume;
    }    void OnGUI()
    {
        GUILayout.BeginHorizontal();
        GUILayout.Label("Mixer volume");
        var newVolume = GUILayout.HorizontalSlider(volume, minVolume, maxVolume, GUILayout.Width(300));        if (!Mathf.Approximately(newVolume, previousVolume))
        {
            volume = newVolume;
            mixer.SetFloat("volume", volume);
        }        GUILayout.EndHorizontal();
    }
}
```
