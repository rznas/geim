<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Media.MediaEncoder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Encodes images and audio samples into an audio or movie file.

Constructing an instance of this class creates an encoder that will create an audio, video or audio/video file with the specified tracks in it.

Call the AddFrame() and AddSamples() methods alternately for each track, so that frames and samples keep each track equally filled.

Once all the wanted frames and samples are added to the file, call Dispose() to end each track properly and close the file.

```csharp
using UnityEditor.Media;
using UnityEngine;
using Unity.Collections;
using System.IO;public class Recorder
{
    static public void RecordMovie()
    {
        var videoAttr = new VideoTrackAttributes
        {
            frameRate = new MediaRational(50),
            width = 320,
            height = 200,
            includeAlpha = false
        };        var audioAttr = new AudioTrackAttributes
        {
            sampleRate = new MediaRational(48000),
            channelCount = 2,
            language = "fr"
        };        int sampleFramesPerVideoFrame = audioAttr.channelCount *
            audioAttr.sampleRate.numerator / videoAttr.frameRate.numerator;        var encodedFilePath = Path.Combine(Path.GetTempPath(), "my_movie.mp4");        Texture2D tex = new Texture2D((int)videoAttr.width, (int)videoAttr.height, TextureFormat.RGBA32, false);        using (var encoder = new MediaEncoder(encodedFilePath, videoAttr, audioAttr))
        using (var audioBuffer = new NativeArray<float>(sampleFramesPerVideoFrame, Allocator.Temp))
        {
            for (int i = 0; i < 100; ++i)
            {
                // Fill 'tex' with the video content to be encoded into the file for this frame.
                // ...
                encoder.AddFrame(tex);                // Fill 'audioBuffer' with the audio content to be encoded into the file for this frame.
                // ...
                encoder.AddSamples(audioBuffer);
            }
        }
    }
}
```

```csharp
using UnityEditor.Media;
using UnityEngine;
using UnityEditor;
using Unity.Collections;
using System.IO;public class Recorder
{
    static public void RecordMovie()
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
        };        var audioAttr = new AudioTrackAttributes
        {
            sampleRate = new MediaRational(48000),
            channelCount = 2,
            language = "fr"
        };        int sampleFramesPerVideoFrame = audioAttr.channelCount *
            audioAttr.sampleRate.numerator / videoAttr.frameRate.numerator;        var encodedFilePath = Path.Combine(Path.GetTempPath(), "my_movie.mp4");        Texture2D tex = new Texture2D((int)videoAttr.width, (int)videoAttr.height, TextureFormat.RGBA32, false);        using (var encoder = new MediaEncoder(encodedFilePath, videoAttr, audioAttr))
        using (var audioBuffer = new NativeArray<float>(sampleFramesPerVideoFrame, Allocator.Temp))
        {
            for (int i = 0; i < 100; ++i)
            {
                // Fill 'tex' with the video content to be encoded into the file for this frame.
                // ...
                encoder.AddFrame(tex);                // Fill 'audioBuffer' with the audio content to be encoded into the file for this frame.
                // ...
                encoder.AddSamples(audioBuffer);
            }
        }
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| MediaEncoder | Create a new encoder with various track arrangements. |

### Public Methods

| Method | Description |
| --- | --- |
| AddFrame | Appends a frame to the file's video track. |
| AddSamples | Appends sample frames to the specified audio track. |
| Dispose | Finishes writing all tracks and closes the file being written. |
