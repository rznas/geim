<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Media.VideoTrackEncoderAttributes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Descriptor for video track format.

```csharp
using UnityEditor.Media;
using UnityEditor;
using UnityEngine;public class Recorder
{
    public VideoTrackEncoderAttributes CreateEncoderAttributes()
    {
        H264EncoderAttributes h264Attr = new H264EncoderAttributes
        {
            gopSize = 25,
            numConsecutiveBFrames = 2,
            profile = VideoEncodingProfile.H264High
        };        var videoAttr = new VideoTrackEncoderAttributes(h264Attr)
        {
            frameRate = new MediaRational(50),
            width = 320,
            height = 200,
            targetBitRate = 3000000
        };        return videoAttr;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| bitRateMode | The VideoBitrateMode for the encoded video. |
| frameRate | The frame rate for the encoded video, in frames per second, expressed as a fraction. |
| height | The image height in pixels. |
| includeAlpha | True if the track is to include the alpha channel found in the texture passed to AddFrame. False otherwise. |
| targetBitRate | The target bit rate for the encoder. |
| width | The image width in pixels. |

### Constructors

| Constructor | Description |
| --- | --- |
| VideoTrackEncoderAttributes | Create a new VideoTrackEncoderAttributes with specific H.264 encoding options. |
