<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/video-sources-compatibility-target-platforms.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Video file compatibility with target platforms

The Video Player component uses the native audio and video decoding libraries of your Unity Editor platform to play video files in the Editor. You need to check that the files meet the system requirements for the target build platform.

## Recommendations for codec support

Follow the vendor recommendations for your platform for codec support:

- **Windows:** [Supported Media Formats](https://docs.microsoft.com/en-us/windows/desktop/medfound/supported-media-formats-in-media-foundation), [H.265](https://docs.microsoft.com/en-us/windows/desktop/medfound/h-265---hevc-video-decoder#format-constraints)
- **UWP:** [Supported Codecs](https://docs.microsoft.com/en-us/windows/uwp/audio-video-camera/supported-codecs)
- **Android:** Supported Media Formats
- **iOS:** [Compare iPhone Models](http://www.apple.com/iphone/compare/)

**Note:** On older mobile platforms, codec choices are limited. You might need to inspect and convert or re-encode videos that you intend to include in an application running on multiple devices.

## Additional resources

- Understand video files
- Video file compatibility with the Unity Editor
- Video encoding compatibility
- Transcoding video files
