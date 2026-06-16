<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWW-audioClip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a AudioClip generated from the downloaded data (Read Only).

The data must be an audio clip in Ogg(Standalones), MP3(phones), WAV, XM, IT, MOD or S3M format. The clip will be downloaded completely before it's ready to play. Use the overloaded GetAudioClip (bool threeD, bool stream) to stream the audio, instead of downloading the entire clip.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public string url;
    public AudioSource source;    IEnumerator Start()
    {
        source = GetComponent<AudioSource>();
        using (var www = new WWW(url))
        {
            yield return www;
            source.clip = www.GetAudioClip();
        }
    }    void Update()
    {
        if (!source.isPlaying && source.clip.isReadyToPlay)
            source.Play();
    }
}
```
