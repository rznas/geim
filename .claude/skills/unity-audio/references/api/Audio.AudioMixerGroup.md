<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.AudioMixerGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Object representing a group in the mixer.

Used to route audio to specific channels in an AudioMixer, allowing for grouped processing and effects.

Commonly used for managing different categories of sounds, like music, sound effects (SFX), and dialogue with shared volume controls and audio effect settings.

AudioMixerGroups can be nested for more complex audio hierarchies. Typically, a root "Master" group is used that contains multiple specific groups like "Music", "SFX" and "Dialogue".

```csharp
using UnityEngine;
using UnityEngine.Audio;// Example of a class that manages audio in a game
public class AudioManager : MonoBehaviour
{
    // References to the AudioMixer and AudioSources
    public AudioMixer audioMixer;
    public AudioSource musicSource;
    public AudioSource sfxSource;    // Handles to the AudioMixerGroups
    private AudioMixerGroup musicGroup;
    private AudioMixerGroup sfxGroup;    private void Start()
    {
        // Find the AudioMixerGroups and set the output of the AudioSources to them
        musicGroup = audioMixer.FindMatchingGroups("Music")[0];
        musicSource.outputAudioMixerGroup = musicGroup;        sfxGroup = audioMixer.FindMatchingGroups("SFX")[0];
        sfxSource.outputAudioMixerGroup = sfxGroup;        SetMusicVolume(0.8f);
        SetSFXVolume(1.0f);
    }    public void SetMusicVolume(float volume)
    {
        // Set the volume of the Music group in the AudioMixer
        // Volume needs to be exposed in the AudioMixer
        audioMixer.SetFloat("MusicVolume", volume);
    }    public void SetSFXVolume(float volume)
    {
        // Set the volume of the SFX group in the AudioMixer
        // Volume needs to be exposed in the AudioMixer
        audioMixer.SetFloat("SFXVolume", volume);
    }
}
```

**Note:** Create your AudioMixerGroups in the editor before referencing them in code.

Additional resources: AudioMixer, AudioSource, AudioListener.

### Properties

| Property | Description |
| --- | --- |
| audioMixer | Gain access to the AudioMixer that this AudioMixerGroup belongs to (Read Only). |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
