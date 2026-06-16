<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource.PlayClipAtPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clip | Audio data to play. |
| position | Position in world space from which sound originates. |
| volume | Playback volume (range from 0.0 - 1.0). |

### Description

Plays an AudioClip at a given position in world space.

This function creates an audio source but automatically disposes of it once the clip has finished playing.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public AudioClip clip; //make sure you assign an actual clip here in the inspector    void Start()
    {
        AudioSource.PlayClipAtPoint(clip, new Vector3(5, 1, 2));
    }
}
```
