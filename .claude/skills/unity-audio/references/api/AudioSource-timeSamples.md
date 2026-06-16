<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-timeSamples.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current playback position of the AudioSource in PCM samples.

Use this to read current playback time or to seek to a new playback time in samples, if you want more precise timing than what time variable allows.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(AudioSource))]
public class ExampleClass : MonoBehaviour
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
        Debug.Log(audioSource.timeSamples);
    }
}
```
