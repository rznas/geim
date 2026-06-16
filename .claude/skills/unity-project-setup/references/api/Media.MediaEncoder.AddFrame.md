<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Media.MediaEncoder.AddFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| texture | Texture containing the pixels to be written into the track for the current frame. |
| time | Timestamp for the new frame. |

### Returns

**bool** True if the operation succeeded. False otherwise.

### Description

Appends a frame to the file's video track.

Keep the number of video frames and audio samples aligned so that each track is syncrhonized as much as possible. For instance, in a file with 30FPS video and 48KHz audio, each added video frame should be followed by an audio buffer of 1600 sample frames.

**Note about timestamps**

When adding a frame, a timestamp associated with this frame can optionally be specified. For the timestamp to be used, it must be valid (see MediaTime.IsValid).

When no timestamp is provided, the frame is appended using the specified video frame rate (see VideoTrackAttributes.frameRate) to compute the inter-frame time difference. There are situations where a timestamp must be specified:

**1.** When the video track is created without a valid rate (see VideoTrackAttributes.frameRate. In this case, **all** added frames must be given a timestamp because there is no pre-defined inter-frame time difference.
 **2.** When the time difference between the last frame and the appended frame is not as expected. For example, when recording in Unity and the game loop lasts longer than expected, the inter-frame time difference is no longer constant. In this case, you must specify the timestamp associated with the appended frame. This way, when playing back the recorded movie, it will match what was seen during recording. The resulting movie will then have a **Variable Frame Rate** (VFR) because there is not exactly the same time difference between each frame.

For tracks with a pre-defined rate, it is valid to mix both variants, with and without timestamps, as long as the time values end up monotonically increasing. Frames added this way do not have to be equally spaced in time. It is invalid to add a frame with a timestamp earlier than the timestamp of the last frame.

### Parameters

| Parameter | Description |
| --- | --- |
| width | Image width. |
| height | Image height. |
| rowBytes | Bytes in one row of pixels. Useful in case lines include padding. Can be set to 0 if there is no padding. |
| format | Pixel format. Only TextureFormat.RGBA32 is supported at this time. |
| data | Bytes containing the image. |
| time | Timestamp for new frame. |

### Returns

**void** True if the operation succeeded. False otherwise.

### Description

Appends a frame from a raw buffer to the file's video track.

This version of AddFrame helps save image copying if the source data is not in a Texture2D. For example, when pixel data comes from a AsyncGPUReadbackRequest. For more details, see the note about audio/video alignment in the variant of MediaEncoder.AddFrame taking a Texture2D.

For more information about the `time` parameter, see **Note about timestamps** in the other overloads of this method.
