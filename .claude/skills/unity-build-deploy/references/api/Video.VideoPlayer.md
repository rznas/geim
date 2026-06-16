<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Plays video content onto a target.

Content can be either a VideoClip imported asset or a URL such as `file://` or `http://`. Video content will be projected onto one of the supported targets, such as camera background or RenderTexture. If the video content includes transparency, this transparency will be present in the target, allowing objects behind the video target to be visible. When the data VideoPlayer.source is set to URL, the audio and video description of what is being played will only be initialized once the VideoPlayer preparation is completed. You can test this with VideoPlayer.isPrepared.

Refer to Video file compatibility for more information on supported video file formats.

**The following demonstrates a few features of the VideoPlayer:**

```csharp
// Examples of VideoPlayer functionusing UnityEngine;
using UnityEngine.Video;public class Example : MonoBehaviour
{
    void Start()
    {
        // Will attach a VideoPlayer to the main camera.
        GameObject camera = GameObject.Find("Main Camera");        // VideoPlayer automatically targets the camera backplane when it is added
        // to a camera object, no need to change videoPlayer.targetCamera.
        var videoPlayer = camera.AddComponent<UnityEngine.Video.VideoPlayer>();        // Play on awake defaults to true. Set it to false to avoid the url set
        // below to auto-start playback since we're in Start().
        videoPlayer.playOnAwake = false;        // By default, VideoPlayers added to a camera will use the far plane.
        // Let's target the near plane instead.
        videoPlayer.renderMode = UnityEngine.Video.VideoRenderMode.CameraNearPlane;        // This will cause our Scene to be visible through the video being played.
        videoPlayer.targetCameraAlpha = 0.5F;        // Set the video to play. URL supports local absolute or relative paths.
        // Here, using absolute.
        videoPlayer.url = "/Users/graham/movie.mov";        // Skip the first 100 frames.
        videoPlayer.frame = 100;        // Restart from beginning when done.
        videoPlayer.isLooping = true;        // Each time we reach the end, we slow down the playback by a factor of 10.
        videoPlayer.loopPointReached += EndReached;        // Start playback. This means the VideoPlayer may have to prepare (reserve
        // resources, pre-load a few frames, etc.). To better control the delays
        // associated with this preparation one can use videoPlayer.Prepare() along with
        // its prepareCompleted event.
        videoPlayer.Play();
    }    void EndReached(UnityEngine.Video.VideoPlayer vp)
    {
        vp.playbackSpeed = vp.playbackSpeed / 10.0F;
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| controlledAudioTrackMaxCount | Maximum number of audio tracks that can be controlled. (Read Only) |

### Properties

| Property | Description |
| --- | --- |
| aspectRatio | Defines how the video content will be stretched to fill the target area. |
| audioOutputMode | Destination for the audio embedded in the video. |
| audioTrackCount | Number of audio tracks found in the data source currently configured. (Read Only) |
| canSetDirectAudioVolume | Whether direct-output volume controls are supported for the current platform and video format. (Read Only) |
| canSetPlaybackSpeed | Whether you can change the playback speed. (Read Only) |
| canSetSkipOnDrop | Whether frame-skipping to maintain synchronization can be controlled. (Read Only) |
| canSetTime | Whether you can change the current time using the VideoPlayer.time or VideoPlayer.frame properties. (Read Only) |
| canSetTimeUpdateMode | Whether you can change the time source followed by the VideoPlayer. (Read Only) |
| canStep | Returns true if the VideoPlayer can step forward through the video content. (Read Only) |
| clip | The clip being played by the VideoPlayer. |
| clockTime | The clock time that the VideoPlayer follows to schedule its samples. The clock time is expressed in seconds. (Read Only) |
| controlledAudioTrackCount | Number of audio tracks that this VideoPlayer will take control of. |
| externalReferenceTime | Reference time of the external clock the VideoPlayer uses to correct its drift. |
| frame | The frame index of the currently available frame in VideoPlayer.texture. |
| frameCount | Number of frames in the current video content. (Read Only) |
| frameRate | The frame rate of the clip or URL in frames/second. (Read Only) |
| height | The height of the images in the VideoClip, or URL, in pixels. (Read Only) |
| isLooping | Determines whether the VideoPlayer restarts from the beginning when it reaches the end of the clip. |
| isPaused | Whether playback is paused. (Read Only) |
| isPlaying | Returns whether the VideoPlayer is currently playing the content. |
| isPrepared | Returns whether the VideoPlayer has successfully prepared the content to be played. |
| length | The length of the VideoClip, or the URL, in seconds. (Read Only) |
| pixelAspectRatioDenominator | Denominator of the pixel aspect ratio (num:den) for the VideoClip or the URL. (Read Only) |
| pixelAspectRatioNumerator | Numerator of the pixel aspect ratio (num:den) for the VideoClip or the URL. (Read Only) |
| playbackSpeed | Factor by which the basic playback rate will be multiplied. |
| playOnAwake | Whether the content will start playing back as soon as the component awakes. |
| renderMode | Where the video content will be drawn. |
| sendFrameReadyEvents | Enables the frameReady events. |
| skipOnDrop | Whether the VideoPlayer is allowed to skip frames to catch up with current time. |
| source | The source that the VideoPlayer uses for playback. |
| targetCamera | Camera component to draw to when VideoPlayer.renderMode is set to either VideoRenderMode.CameraFarPlane or VideoRenderMode.CameraNearPlane. |
| targetCamera3DLayout | Type of 3D content contained in the source video media. |
| targetCameraAlpha | Overall transparency level of the target camera plane video. |
| targetMaterialProperty | Material texture property which is targeted when VideoPlayer.renderMode is set to Video.VideoTarget.MaterialOverride. |
| targetMaterialRenderer | Renderer which is targeted when VideoPlayer.renderMode is set to Video.VideoTarget.MaterialOverride |
| targetTexture | RenderTexture to draw to when VideoPlayer.renderMode is set to VideoRenderMode.RenderTexture. |
| texture | Internal texture in which video content is placed. (Read Only) |
| time | The presentation time of the currently available frame in VideoPlayer.texture in seconds. |
| timeReference | The clock that the VideoPlayer observes to detect and correct drift. |
| timeUpdateMode | The clock source used by the VideoPlayer to derive its current time. |
| url | The file URL or web URL that the VideoPlayer reads content from. |
| waitForFirstFrame | Determines whether the VideoPlayer will wait for the first frame to be loaded into the texture before starting playback when VideoPlayer.playOnAwake is on. |
| width | The width of the images in the VideoClip, or URL, in pixels. (Read Only) |

### Public Methods

| Method | Description |
| --- | --- |
| EnableAudioTrack | Enable/disable audio track decoding. Only effective when the VideoPlayer is not currently playing. |
| GetAudioChannelCount | The number of audio channels in the specified audio track. |
| GetAudioLanguageCode | Returns the language code, if any, for the specified track. |
| GetAudioSampleRate | Gets the audio track sampling rate in Hertz. |
| GetDirectAudioMute | Gets the direct-output audio mute status for the specified track. |
| GetDirectAudioVolume | Return the direct-output volume for specified track. |
| GetTargetAudioSource | Gets the AudioSource that will receive audio samples for the specified track if VideoPlayer.audioOutputMode is set to VideoAudioOutputMode.AudioSource. |
| IsAudioTrackEnabled | Whether decoding for the specified audio track is enabled. See VideoPlayer.EnableAudioTrack for distinction with mute. |
| Pause | Pauses the playback and leaves the current time intact. |
| Play | Starts or resumes the playback of a video. |
| Prepare | Prepares the playback engine so that it's ready for playback. |
| SetDirectAudioMute | Set the direct-output audio mute status for the specified track. |
| SetDirectAudioVolume | Set the direct-output audio volume for the specified track. |
| SetTargetAudioSource | Sets the AudioSource that will receive audio samples for the specified track if this audio target is selected with VideoPlayer.audioOutputMode. |
| StepForward | Immediately advance the current time by one frame. |
| Stop | Stops the playback and sets the current time to 0. |

### Events

| Event | Description |
| --- | --- |
| clockResyncOccurred | Invoked when the VideoPlayer clock is synced back to its VideoTimeReference. |
| errorReceived | The VideoPlayer uses this callback to report various types of errors. |
| frameDropped | Invoked when the video decoder does not produce a frame as per the time source during playback. |
| frameReady | The VideoPlayer invokes this event when a new frame is ready to be displayed. |
| loopPointReached | The VideoPlayer emits this event when the video reaches the end of its playback. |
| prepareCompleted | The VideoPlayer invokes this event when the video is ready for playback. |
| seekCompleted | Invoke after a seek operation completes. |
| started | The VideoPlayer emits this event when the video starts to play. |

### Delegates

| Delegate | Description |
| --- | --- |
| ErrorEventHandler | Delegate type for VideoPlayer events that contain an error message. |
| EventHandler | Delegate type for all events without parameters emitted by VideoPlayers. |
| FrameReadyEventHandler | Delegate type for VideoPlayer events that carry a frame number. |
| TimeEventHandler | Delegate type for VideoPlayer events that carry a time position. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| enabled | Enabled Behaviours are Updated, disabled Behaviours are not. |
| isActiveAndEnabled | Checks whether a component is enabled, attached to a GameObject that is active in the hierarchy, and the component's OnEnable has been called. |
| gameObject | The game object this component is attached to. A component is always attached to a game object. |
| tag | The tag of this game object. |
| transform | The Transform attached to this GameObject. |
| transformHandle | The TransformHandle of this GameObject. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| BroadcastMessage | Calls the method named methodName on every MonoBehaviour in this game object or any of its children. |
| CompareTag | Checks the GameObject's tag against the defined tag. |
| GetComponent | Gets a reference to a component of type T on the same GameObject as the component specified. |
| GetComponentInChildren | Gets a reference to a component of type T on the same GameObject as the component specified, or any child of the GameObject. |
| GetComponentIndex | Gets the index of the component on its parent GameObject. |
| GetComponentInParent | Gets a reference to a component of type T on the same GameObject as the component specified, or any parent of the GameObject. |
| GetComponents | Gets references to all components of type T on the same GameObject as the component specified. |
| GetComponentsInChildren | Gets references to all components of type T on the same GameObject as the component specified, and any child of the GameObject. |
| GetComponentsInParent | Gets references to all components of type T on the same GameObject as the component specified, and any parent of the GameObject. |
| SendMessage | Calls the method named methodName on every MonoBehaviour in this game object. |
| SendMessageUpwards | Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour. |
| TryGetComponent | Gets the component of the specified type, if it exists. |
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
