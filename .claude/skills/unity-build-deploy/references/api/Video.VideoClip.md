<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoClip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A container for video assets that can be used in the Vide.VideoPlayer component.

A VideoClip stores the video portion of a movie file using a codec that is appropriate for the target platform. The VideoPlayer class references VideoClips.

The following example shows how to assign a video clip to a video player and play it.

Additional resources: VideoPlayer, class-VideoClip.

```csharp
using UnityEngine;
using UnityEngine.Video;public class PlayClip : MonoBehaviour
{
    public VideoClip myVideoClip;
    public VideoPlayer videoPlayer;    void Start()
    {
        // Assign the clip to the player
        videoPlayer.clip = myVideoClip;        // Optionally configure video player settings        videoPlayer.Play();
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| audioTrackCount | Gets the number of audio tracks that are embedded in the video clip. (Read Only). |
| frameCount | The length of the video clip in frames. (Read Only). |
| frameRate | The frame rate of the clip in frames per second. (Read Only). |
| height | The height of the images in the video clip in pixels. (Read Only). |
| length | The length of the video clip in seconds. (Read Only). |
| originalPath | Gets the original video clip file path as it was imported into Unity. (Read Only). |
| pixelAspectRatioDenominator | Returns the denominator of the pixel aspect ratio (numerator:denominator). (Read Only). |
| pixelAspectRatioNumerator | Returns the numerator of the pixel aspect ratio (numerator:denominator). (Read Only). |
| sRGB | Whether the imported clip contains sRGB color data (Read Only). |
| width | The width of the images in the video clip in pixels. (Read Only). |

### Public Methods

| Method | Description |
| --- | --- |
| GetAudioChannelCount | Returns the number of channels in the audio track. For example, if the audio track is a stereo track, this function returns 2. |
| GetAudioLanguage | Gets the language of the video clip’s audio tracks, if the audio tracks have an assigned language. |
| GetAudioSampleRate | Get the audio track sampling rate in hertz (Hz). |

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
