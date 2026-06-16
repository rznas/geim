<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-time.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Audio source playback position in seconds.

Use this property to read the current playback time or to seek to a new playback time.

If the audio source is **not playing**, time will always return 0, regardless of any previously set or expected playback position.
 If you need to know the playback position when the audio source is not playing, use timeSamples instead.
 Setting this property while the audio source is not playing will update the playback position, but it will only take effect once playback begins.

**Be aware that:** On a compressed audio track, the reported playback position does not necessarily reflect the exact time in the track.
 Compressed audio is stored in packets, and the size of these packets depends on the compression settings. In many cases, a single packet can represent 2–3 seconds of audio.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    AudioSource audioSource;    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Return))
        {
            audioSource.Stop();
            audioSource.Play();
        }
        Debug.Log(audioSource.time);
    }
}
```
