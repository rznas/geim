<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-clip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The default AudioClip to play.

AudioSource clip determines the audio clip that should play next. 

When you assign a new audio clip to clip, the old clip it replaces (if any) stops and is replaced by the new one. However, the new clip doesn't automatically play so you need to use AudioSource.Play (or similar) to play it.

```csharp
// This script outputs a GUI play button. The script plays an audio clip on launch, but if you press the play button it switches to another clip and then plays that one instead. 
// For this script to work, assign it to a GameObject. Then, assign an audio clip in the Inspector, and another clip to the Audio Source.  using UnityEngine;
using System.Collections;[RequireComponent(typeof(AudioSource))]
public class AudioSourceClipExample : MonoBehaviour
{
    public AudioClip otherClip;
    AudioSource audio;     void Start()
    {
        audio = GetComponent<AudioSource>();
        audio.Play();
    }    private void OnGUI()
    {
        if (GUI.Button(new Rect(10, 70, 30, 30), "Switch clip"))
        {
            audio.clip = otherClip;
            audio.Play();
        }
    }
}
```
