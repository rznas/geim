<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SetOverrideShaderChunkSettingsForPlatform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTarget | The build target to set the override for. |
| value | Set the value to `true` if you want settings for the `buildTarget` to override the default settings. |

### Description

Enable this to override the default shader variant chunk settings.

If you set `SetOverrideShaderChunkSettingsForPlatform` to `true` for a build target, you can do the following:

- Use PlayerSettings.SetShaderChunkCountForPlatform to override PlayerSettings.SetDefaultShaderChunkCount.
- Use PlayerSettings.SetShaderChunkSizeInMBForPlatform to override PlayerSettings.SetDefaultShaderChunkSizeInMB.

Additional resources: PlayerSettings.GetOverrideShaderChunkSettingsForPlatform.
