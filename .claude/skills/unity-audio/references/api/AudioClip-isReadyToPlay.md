<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioClip-isReadyToPlay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if the AudioClip is ready to play (read-only).

This applies to any type of AudioClip, regardless whether they load all data at startup, dynamically in the background or streamed from disk or web. In the first case the property will be true when the whole clip has been loaded, while in the streamed cases it will be true when enough data is buffered to start playback.

```csharp
using UnityEngine;
using UnityEngine.Networking;public class Example : MonoBehaviour
{
    AudioSource source;    void Start()
    {
        UnityWebRequest webRequest = UnityWebRequestMultimedia.GetAudioClip("www.example.com", AudioType.UNKNOWN);
        source = GetComponent<AudioSource>();
        source.clip = DownloadHandlerAudioClip.GetContent(webRequest);
    }    void Update()
    {
        if (!source.isPlaying && source.clip.isReadyToPlay)
        {
            source.Play();
        }
    }
}
```
