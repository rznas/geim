<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.AudioResource.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an audio generator asset that you can play through an AudioSource.

**Note**: Audio generators don’t provide direct access to properties like `length`. However, if your audio generator is an AudioClip, you can access these properties through AudioSource.clip. Other types of resources might not provide direct access to these properties because the resources are dynamic or the values might change every time you play the audio.

Additional resources: AudioClip, AudioRandomContainer.

```csharp
using System.Collections;
using UnityEngine;
using UnityEngine.Audio;// Play an AudioClip, then an AudioResource, through an AudioSource.
[RequireComponent(typeof(AudioSource))]
public class ExampleClass : MonoBehaviour
{
    public AudioClip m_Clip;
    public AudioResource m_Resource;    IEnumerator Start()
    {
        AudioSource audioSource = GetComponent<AudioSource>();
        audioSource.resource = m_Clip;
        audioSource.Play();        yield return new WaitForSeconds(audioSource.clip.length);        audioSource.resource = m_Resource;
        audioSource.Play();
    }
}
```

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
