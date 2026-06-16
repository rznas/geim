<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/TextureStreaming-preload.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Preload mipmap levels

If you enable a **camera** at runtime, mipmap streaming needs time to stream the mipmap levels into memory.

You can use texture preloading to prevent this. Do the following:

1. Add a **Streaming Controller** component to the disabled camera. For more information about this component, refer to Configure mipmap streaming.
2. Call the StreamingController.SetPreloading API on the camera to preload the mipmap levels.

Use StreamingController.CancelPreloading to cancel preloading.

You can use the following APIs after you enable preloading:

- StreamingController.IsPreloading to check if the camera is preloading.
- Texture.streamingTextureLoadingCount and Texture.streamingTexturePendingLoadCount to check how many textures Unity is still loading mipmap levels for.

If these APIs return values that indicate Unity has finished preloading, you might need to wait a few frames before you enable the camera to make sure preloading has finished.
