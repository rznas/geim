<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/TextureStreaming-analyze.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Analyze mipmap streaming

The ****Scene**** view has a Debug Draw Mode that helps you visualize and debug mipmap streaming in your scene. To enable it, follow these steps:

1. Select **Debug Draw Mode** in the Scene view Draw Modes overlay.
2. Select **Texture Mipmap Streaming**.

The Debug Draw Mode tints **GameObjects** the following colours:

- Green if a texture uses fewer mipmap levels.
- Red if a texture uses fewer mipmap levels because mipmap streaming doesn’t have enough resources to load them all.
- Blue if a texture that doesn’t use mipmap streaming, or there’s no renderer calculating the mipmap levels.

**Note:** If you use the MainTexture API to set a main texture, the texture won’t display in the Debug Draw Mode.

If your project uses a scriptable **render pipeline**, use the following to analyze mipmap streaming instead:

- Rendering Debugger in URP
- [Rendering Debugger in HDRP](https://docs.unity3d.com/Packages/com.unity.render-pipelines.high-definition@17.0/manual/rendering-debugger-window-reference)

## Get mipmap streaming information in a script

To get information about texture memory, use the following properties:

- Texture.currentTextureMemory
- Texture.desiredTextureMemory
- Texture.totalTextureMemory
- Texture.targetTextureMemory
- Texture.nonStreamingTextureMemory

To get information about the number of textures or renderers that mipmap streaming affects, use the following properties:

- Texture.streamingMipmapUploadCount
- Texture.nonStreamingTextureCount
- Texture.streamingTextureCount
- Texture.streamingRendererCount

To get information about the mipmap levels for a texture, use the following properties:

- Texture2D.desiredMipmapLevel
- Texture2D.loadingMipmapLevel
- Texture2D.loadedMipmapLevel
