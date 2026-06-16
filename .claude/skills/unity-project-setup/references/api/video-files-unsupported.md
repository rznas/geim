<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/video-files-unsupported.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Use unsupported video files in the Editor

To use video files that are compatible with target platforms but incompatible with the Unity Editor, set them up as streaming assets.

1. Drag your video file into the StreamingAssets folder.
2. Reference the StreamingAssets URL in the Video Player component. Alternatively, you can use `Application.streamingAssetsPath`.

## Use placeholder video files

If you want to use placeholder versions of your video files that are compatible with your Editor but use a different version for your target platform, you can include both versions in your project and decide which version to use at runtime.

The following example script demonstrates how to use different video URLs for different platforms. For more information, refer to Platform-dependent compilation.

```
void SetupMovieFile(VideoPlayer vp)
{
   #if UNITY_EDITOR || UNITY_LINUX
   vp.url = pathToMyVp8File;
   #elif UNITY_ANDROID
   vp.url = pathToMyVp9File;
   #elif UNITY_STANDALONE_WIN
   vp.url = pathToMyWmvFile;
   #else
   vp.url = pathToMyMp4File;
   #endif
}
```

This ensures Unity uses the correct video format at runtime, while allowing placeholder files in the Editor.

## Additional resources

- Understand video files
- Use video sources
- Video file compatibility with the Unity Editor
