<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-isPlaying.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns whether the AudioSource is currently playing an AudioResource(Read Only).

AudioSource.isPlaying returns true if the AudioSource is playing any AudioResource, such as AudioClip or AudioRandomContainer. This includes if you use PlayOneShot() or if you play a video or timeline track through the AudioSource. 

**Note:** AudioSource.isPlaying returns *false* when `AudioSource.Pause()` is called. If you use `AudioSource.Play()` back again, it returns true.

**Note:** If you use AudioSource.PlayDelayed to play your clip, AudioSource.isPlaying returns true during the delay.

```csharp
// When the audio component has stopped playing, play otherClip.
// Remember to assign an AudioClip in the Inspector.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public AudioClip otherClip;
    AudioSource audioSource;    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }    void Update()
    {
        if (!audioSource.isPlaying)
        { 
            audioSource.clip = otherClip;
            audioSource.Play();
        }
    }
}
```
