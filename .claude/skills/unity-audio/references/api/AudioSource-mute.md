<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-mute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Un- / Mutes the AudioSource. Mute sets the volume=0, Un-Mute restore the original volume.

```csharp
// Mutes-Unmutes the sound from this object each time the user presses space.
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    AudioSource audioSource;    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
            audioSource.mute = !audioSource.mute;
    }
}
```
