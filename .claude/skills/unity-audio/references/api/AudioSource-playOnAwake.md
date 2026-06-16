<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-playOnAwake.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable this property to automatically play the audio source when the component or GameObject becomes active.

If you enable this property and the GameObject isn't active or if the AudioSource component is disabled, the audio won't play until they become active. While this property is enabled, if you disable then enable the GameObject or the audio source, the audio will stop and then play again from the start. If you set this property to `false`, the audio doesn't play. In this case, you need to use AudioSource.Play to play the audio.

```csharp
// This script creates and attaches an audio source to the GameObject and disables playOnAwake. 
// This means the audio won't play on launch, instead you need to press the button this script creates to play the audio.
// Make sure to assign an audio clip in the Inspector. using UnityEngine;public class PlayOnAwakeExample : MonoBehaviour
{
    AudioSource audioSource;
    public AudioClip audioClip;     void Awake()
    {
        audioSource = gameObject.AddComponent<AudioSource>();
        audioSource.playOnAwake = false;
        audioSource.clip = audioClip; 
    }    void OnGUI()
    {
        if(GUI.Button(new Rect(10, 70, 150, 30), "Play"))
        {
            audioSource.Play(); 
        }
    }
}
```

```csharp
// This script creates 2 toggles - 1 changes the status of AudioSource.playOnAwake, the other activates or deactivates the audio source component. 
// If you deactivate Enable audio source, any audio that is currently playing will stop. 
// If you enable Play on Awake and activate Enable audio source, the audio will play from the start. 
// If you disable Play on Awake, the audio will not play when you activate the audio source. // For this script to work, attach the script and an AudioSource component to a GameObject in your Scene. 
// Also assign an audio generator to the AudioSource so it has audio to play.  using UnityEngine;
[RequireComponent(typeof(AudioSource))]
public class PlayOnAwakeExample : MonoBehaviour
{
    AudioSource audioSource;    void Awake()
    {
        audioSource = GetComponent<AudioSource>();
    }    void OnGUI()
    {
        // Toggles that change the status of AudioSource.playOnAwake and AudioSource.enabled.
        audioSource.playOnAwake = GUI.Toggle(new Rect(10, 0, 150, 30), audioSource.playOnAwake, "Play on Awake");
        audioSource.enabled = GUI.Toggle(new Rect(10, 70, 150, 30), audioSource.enabled, "Enable audio source");
    }
}
```
