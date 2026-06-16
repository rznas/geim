<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VideoEncodingProfile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use the options in this enumeration to change the encoder profile.

H.264 profiles (Baseline, Main, and High) are compression and encoding standards that determine how the MediaEncoder compresses and encodes video files during recording. You can use the `MediaEncoder` to encode clips and choose the encoding profile via C#. The encoding profile you select influences the compatibility and compression efficiency of the H.264 codec. To record video, you can use the Unity Recorder, which uses the `MediaEncoder` in its implementation, or you can implement your own custom recording logic to work directly with the `MediaEncoder` API.

For a code example, refer to H264EncoderAttributes.

This enum isn’t exposed in VideoClipImporter, so when you transcode video clips to H.264 during an import, Unity uses the baseline profile for maximum stability and compatibility.

### Properties

| Property | Description |
| --- | --- |
| H264Baseline | Encode video with the baseline profile. |
| H264Main | Encode video using the main profile. |
| H264High | Encode video with the high profile. |
