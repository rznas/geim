<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Media.VP8EncoderAttributes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Descriptor for VP8 encoder attributes.

```csharp
using UnityEditor.Media;
using UnityEngine;
using Unity.Collections;
using System.IO;public class Recorder
{
    static public void RecordMovie()
    {
        VP8EncoderAttributes vp8Attr = new VP8EncoderAttributes
        {
            keyframeDistance = 25
        };        var videoAttr = new VideoTrackEncoderAttributes(vp8Attr)
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
            audioAttr.sampleRate.numerator / videoAttr.frameRate.numerator;        var encodedFilePath = Path.Combine(Path.GetTempPath(), "my_movie.webm");        Texture2D tex = new Texture2D((int)videoAttr.width, (int)videoAttr.height, TextureFormat.RGBA32, false);        using (var encoder = new MediaEncoder(encodedFilePath, videoAttr, audioAttr))
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

### Properties

| Property | Description |
| --- | --- |
| keyframeDistance | The maximum distance between I-frames. |
