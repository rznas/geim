<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings.SetTextureMipmapLimitSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| groupName | Name of the texture mipmap limit group to modify. |
| textureMipmapLimitSettings | The new texture mipmap limit settings to apply. |

### Description

Applies new TextureMipmapLimitSettings to the indicated texture mipmap limit group.

Throws an exception if Unity cannot find `groupName`.

At run time, if TextureMipmapLimitSettings.limitBias corresponds to a mip level that has been stripped, Unity sets the value to the closest mip level that has not been stripped. For additional information regarding mipmap stripping, see PlayerSettings.mipStripping.

Additional resources: TextureMipmapLimitSettings, GetTextureMipmapLimitSettings.
