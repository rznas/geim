<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource.PlayOneShot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clip | The clip being played. |
| volumeScale | The scale of the volume. Unity automatically clamps negative scales to zero. Note: Scales larger than one might cause clipping. |

### Description

Plays an AudioClip, and scales the AudioSource volume by volumeScale.

AudioSource.PlayOneShot does not cancel clips that are already being played by AudioSource.PlayOneShot and AudioSource.Play. For more information on how this method differs from AudioSource.Play, see AudioSource.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(AudioSource))]
public class ExampleClass : MonoBehaviour
{
    public AudioClip impact;
    AudioSource audioSource;    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }    void OnCollisionEnter()
    {
        audioSource.PlayOneShot(impact, 0.7F);
    }
}
```

Additional resources: AudioSource.Play.
