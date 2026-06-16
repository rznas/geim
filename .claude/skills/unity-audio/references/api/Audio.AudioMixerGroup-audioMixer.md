<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.AudioMixerGroup-audioMixer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gain access to the AudioMixer that this AudioMixerGroup belongs to (Read Only).

This property is useful if you want to access the AudioMixer and modify its properties or the properties of its groups dynamically.

```csharp
using UnityEngine;
using UnityEngine.Audio;public class ExampleAudioMixer : MonoBehaviour
{
    public AudioMixerGroup audioMixerGroup;    void Start()
    {
        // Output the name of the AudioMixer that this AudioMixerGroup belongs to
        AudioMixer parentMixer = audioMixerGroup.audioMixer;
        Debug.Log("AudioMixer Name: " + parentMixer.name);        // Use the exposed parameters of different AudioMixerGroups to change the volume of those groups. 
        // Make sure to expose the parameters you want to change in your groups and rename them to something memorable. 
        // "TestVolume" and "MainVolume" are the exposed and renamed volume parameters of 2 different AudioMixerGroups. 
        parentMixer.SetFloat("TestVolume", -80f);
        parentMixer.SetFloat("MainVolume", 5.0f);
    }
}
```
