<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/video-transcode-intro.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to transcoding video files

Video transcoding converts video files between different formats. The Video Clip Importer can transcode video files that you import into Unity. This is useful when your video files use a codec that the Editor platform supports, but isn’t compatible with your target platforms.

For instructions on how to transcode your video clips, refer to the Transcode your video files.

## Video codecs

You can transcode video files into one of the following video codecs:

- [H.264](https://en.wikipedia.org/wiki/H.264/MPEG-4_AVC)
- [H.265](https://en.wikipedia.org/wiki/High_Efficiency_Video_Coding)
- [VP8](https://en.wikipedia.org/wiki/VP8)

Transcoded video files use the appropriate audio codec automatically:

- [AAC](https://en.wikipedia.org/wiki/Advanced_Audio_Coding) for videos encoded with H.264 or H.265
- [Vorbis](https://en.wikipedia.org/wiki/Vorbis) for videos encoded with VP8

**Note**: The Video Clip Importer provides only basic transcoding options. Depending on the encoding of your source files, you might get optimal performance with an external transcoding program.

## Additional resources

- Video file compatibility with the Unity Editor
- Video file compatibility with target platforms
- Video encoding compatibility
- Understand video files
