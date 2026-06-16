<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SetDefaultShaderChunkCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTarget | The build target to set the shader chunk count for. |
| chunkCount | The maximum number of chunks to keep in memory for each shader. |

### Description

Sets the default limit on the number of shader variant chunks Unity loads and keeps in memory.

To limit the amount of memory Unity uses to load shader variants, you can use `SetDefaultShaderChunkCount` to set the maximum number of compressed shader variant chunks you want Unity to load and decompress into CPU memory at one time.

The default value is `0`, which means Unity loads and decompresses all the chunks into memory.

When Unity reaches the limit but needs to load another chunk, Unity removes the least recently used decompressed chunk from memory to make room.

You can use PlayerSettings.SetDefaultShaderChunkSizeInMB to limit the size of compressed chunks.

Use the following to override the default shader chunk count:

- PlayerSettings.SetShaderChunkCountForPlatform to override for a build target.
- Shader.maximumChunksOverride to override at runtime.

Additional resources: PlayerSettings.GetDefaultShaderChunkCount.
