<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureMipmapLimitSettings-limitBias.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The new value to apply on top of the global texture mipmap limit. Can act as an offset (default) or an override to it.

By default, this is equal to `0`.

If limitBiasMode is set to TextureMipmapLimitBiasMode.OffsetGlobalLimit, `limitBias` acts as an offset to the current quality level's QualitySettings.globalTextureMipmapLimit. For example, if the global texture mipmap limit is `1` (half size) and `limitBias` is also `1`, the final combined value for textures that are affected by these settings is `2`. (quarter size)

If limitBiasMode is set to TextureMipmapLimitBiasMode.OverrideGlobalLimit, `limitBias` ignores the global texture mipmap limit and acts as an override. For example, if QualitySettings.globalTextureMipmapLimit is `2` (quarter size), and `limitBias` is `0` (full resolution), the final combined value for textures that are affected by these settings is `0` (full resolution).

Additional resources: limitBiasMode, QualitySettings.globalTextureMipmapLimit.
