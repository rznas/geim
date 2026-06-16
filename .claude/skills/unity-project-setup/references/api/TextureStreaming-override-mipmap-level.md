<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/TextureStreaming-override-mipmap-level.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Override the mipmap level of a texture

You configure Unity to override the mipmap level of a texture using the following:

- The **Priority** property in the **Texture Import Settings** window of the texture.
- The Texture2D.requestedMipmapLevel API.

## Use the Priority property

Follow these steps:

1. Select the texture asset in the **Project** window.
2. In the **Texture Import Settings** window, in the **Advanced** section, set a **Priority** value between –128 and 127.

When Unity needs to reduce mipmap levels to meet the memory limit, it considers textures in priority order from low to high until it meets the limit. This means textures with a higher priority value are more likely to keep their higher-resolution mipmap levels.

Unity removes a mipmap level of a lower-priority texture every time it considers textures at that priority or higher. For example, if you set one texture to a **Priority** of 1 and another texture to a **Priority** of 5, Unity might remove four mipmap levels before it considers the second texture.

You can also use the following APIs to set the **Priority** value:

- TextureImporter.streamingMipmapsPriority
- Texture2D.streamingMipmapsPriority
- IHVImageFormatImporter.streamingMipmapsPriority

## Use the API

Use the following APIs:

- Texture2D.requestedMipmapLevel to request that Unity overrides the mipmap level of the texture.
- Texture2D.IsRequestedMipmapLevelLoaded to check if Unity loads your requested mipmap level.
- Texture2D.ClearRequestedMipmapLevel if you no longer want to override the mipmap level.

You can use the `Mesh.GetUVDistributionMetric` API to get an estimate of the UV density of a **mesh**. This helps you calculate the mipmap level you need, based on the position of the **camera**. For example code, refer to Mesh.GetUVDistributionMetric.

### Override mipmap levels on all textures

Use Texture.streamingTextureForceLoadAll to load all mipmap levels for all textures.

## Additional resources

- TextureImporter.streamingMipmaps
- IHVImageFormatImporter.streamingMipmaps
