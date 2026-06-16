<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture-streamingTexturePendingLoadCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Number of streaming Textures with outstanding mipmaps to be loaded.

When adding a new camera it can take a few frames to detect which new Textures need to be loaded. Therefore this value can't be relied upon immediately. If any objects move or the camera moves then this value will change so it's not guaranteed to drop to zero. When implementing camera cuts it is recommended you have a minimum time to allow mipmap levels to be calculated and maximum time to wait before doing the cut. This property can be used with a value between the min and max time in order to cut earlier if the mipmaps are loaded in time.

The minimum time is dependent on the number of renderers in the Scene and the number that are processed each frame. A minimum frame delay can be calculated as (Texture.streamingRendererCount + (QualitySettings.streamingMipmapsRenderersPerFrame-1)) / QualitySettings.streamingMipmapsRenderersPerFrame. The maximum time should be an acceptable delay to a user. E.g. 0.5 seconds (or 30 frames at 60Hz).

Additional resources: Texture.streamingRendererCount, QualitySettings.streamingMipmapsRenderersPerFrame, Texture.streamingTextureLoadingCount
