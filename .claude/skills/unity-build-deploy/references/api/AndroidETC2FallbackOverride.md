<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidETC2FallbackOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This enumeration has values for different qualities to decompress an ETC2 texture on Android devices that don't support the ETC2 texture format.

### Properties

| Property | Description |
| --- | --- |
| UseBuildSettings | Use the value defined in Player build settings. |
| Quality32Bit | Texture is decompressed to the TextureFormat.RGBA32 format. |
| Quality16Bit | Texture is decompressed to a suitable 16-bit format. |
| Quality32BitDownscaled | Texture is decompressed to the TextureFormat.RGBA32 format and downscaled to half of the original texture width and height. |
