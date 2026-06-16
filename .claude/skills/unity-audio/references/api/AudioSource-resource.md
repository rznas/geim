<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-resource.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The default AudioResource to play.

You can also use this property to set the AudioResource that plays next.

**Note**: Audio generators don’t provide direct access to properties like `length`. However, if your audio generator is an AudioClip, you can access these properties through AudioSource.clip. Other types of resources might not provide direct access to these properties because the resources are dynamic or the values might change every time you play the audio.

```csharp
using UnityEngine;[RequireComponent(typeof(AudioSource))]
public class ExampleClass : MonoBehaviour
{
    public AudioResource m_Resource;    public void PlayAudioResource()
    {
        AudioSource audioSource = GetComponent<AudioSource>();
        audioSource.resource = m_Resource;
        audioSource.Play();
    }
}
```
