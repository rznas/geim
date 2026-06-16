<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shader-memory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Control how much memory shaders use

In your built application, Unity stores several ‘chunks’ of compressed **shader** variant data. Each chunk contains multiple shader variants. When Unity loads a **scene** at runtime, it loads all the scene’s chunks into CPU memory and decompresses them.

To reduce memory usage on platforms that have limited memory, you can limit the size of chunks and how many decompressed chunks Unity keeps in memory.

To do this, in Player settings, select **Other Settings** > **Shader Variant Loading** and adjust the following settings:

- Use **Default chunk size (MB)** to set the maximum size of compressed chunks Unity stores in your built application.
- Use **Default chunk count** to limit how many decompressed chunks Unity keeps in memory. The default is `0`, which means there’s no limit.

See PlayerSettings.SetDefaultShaderChunkCount for more information.

You can use **Override** to override the values for each platform individually. See PlayerSettings.SetShaderChunkCountForPlatform for more information.

You can also use Shader.maximumChunksOverride to override **Default chunk count** at runtime.
