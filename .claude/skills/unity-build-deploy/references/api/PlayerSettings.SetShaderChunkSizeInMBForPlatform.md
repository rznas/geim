<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SetShaderChunkSizeInMBForPlatform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTarget | The build target to set the shader chunk size for. |
| sizeInMegabytes | The chunk size in megabytes. |

### Description

Sets the default size for compressed shader variant chunks on the build target.

Unity stores multiple shader variants in compressed chunks. You can use `SetDefaultShaderChunkSizeInMBForPlatform` to set the maximum size of each chunk.

This parameter overrides PlayerSettings.SetDefaultShaderChunkSizeInMB on the build target.

You can use this parameter with PlayerSettings.SetShaderChunkCountForPlatform to limit the amount of memory Unity uses for shader variants.

Additional resources: PlayerSettings.GetShaderChunkSizeInMBForPlatform.
