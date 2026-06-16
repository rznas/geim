<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource.Play.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| delay | Deprecated. Delay in number of samples, assuming a 44100Hz sample rate (meaning that Play(44100) will delay the playing by exactly 1 sec). |

### Description

Plays the clip.

The delay parameter is deprecated, please use the newer AudioSource.PlayDelayed function instead which specifies the delay in seconds.

 If AudioSource.clip is set to the same clip that is playing then the clip will sound like it is re-started. AudioSource will assume any Play call will have a new audio clip to play.

**Note:** The AudioSource.PlayScheduled API will give you more accurate control over when the audio clip is played.

For a list of audio file types Unity supports, refer to Audio Clip.

```csharp
using UnityEngine;// The Audio Source component has an AudioClip option.  The audio
// played in this example comes from AudioClip and is called audioData.[RequireComponent(typeof(AudioSource))]
public class ExampleScript : MonoBehaviour
{
    AudioSource audioData;    void Start()
    {
        audioData = GetComponent<AudioSource>();
        audioData.Play(0);
        Debug.Log("started");
    }    void OnGUI()
    {
        if (GUI.Button(new Rect(10, 70, 150, 30), "Pause"))
        {
            audioData.Pause();
            Debug.Log("Pause: " + audioData.time);
        }        if (GUI.Button(new Rect(10, 170, 150, 30), "Continue"))
        {
            audioData.UnPause();
        }
    }
}
```

Additional resources: Stop, Pause, clip and PlayScheduled functions.
