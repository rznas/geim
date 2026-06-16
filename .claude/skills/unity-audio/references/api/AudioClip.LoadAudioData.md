<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioClip.LoadAudioData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Returns true if the clip is loaded into memory.

### Description

Loads the asset data of an AudioClip into memory, so it will immediately be ready to play.

Use this method when your application can afford an upfront performance overhead. The overhead happens because this method loads resources in ahead-of-time. It's recommended that you use `AudioClip.LoadAudioData` in methods like `Start()` of MonoBehaviour.

If you don't use this method and use AudioSource.Play on an unloaded audio clip, the clip still loads in before playback, but it can cause delays due to the clip loading in dynamically. In contrast, `AudioClip.LoadAudioData` loads your audio clips in advance so they're ready to immediately play when necessary.

Key details about `AudioClip.LoadAudioData`:

- If you call it on an audio clip that is already loaded, it does nothing and returns `true`.
- It doesn't reload clips that have AudioClip.preloadAudioData set to `true`.
- It loads the AudioClip synchronously, unless AudioClip.loadInBackground is set to `true`.
- If you play a clip that is loading in the background, the audio source will delay playback until the clip is ready to play.
- You can use AudioClip.loadState to monitor the current load state of the audio data.

```csharp
using UnityEngine;public class LoadClipAtStart : MonoBehaviour
{
    AudioClip m_Clip;
    void Start()
    {
        m_Clip.LoadAudioData();
        //Components that use AudioClip, for example AudioSource, are ready to immediately use the audio data, rather
        // than triggering a load themselves.    }
}
```
