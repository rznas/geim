<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SetDefaultShaderChunkSizeInMB.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sizeInMegabytes | The chunk size in megabytes. |

### Description

Sets the default size for compressed shader variant chunks.

Unity stores multiple shader variants in compressed chunks. You can use `SetDefaultShaderChunkSizeInMB` to set the maximum size of each chunk.

You can use this parameter with PlayerSettings.SetDefaultShaderChunkCount to limit the amount of memory Unity uses for shader variants.

Use PlayerSettings.SetShaderChunkSizeInMBForPlatform to override the default shader chunk size for a build target.

Additional resources: PlayerSettings.GetDefaultShaderChunkSizeInMB.
