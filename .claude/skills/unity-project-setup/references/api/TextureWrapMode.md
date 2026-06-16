<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureWrapMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Wrap mode for textures.

Corresponds to the settings in a texture inspector. Wrap mode determines how texture is sampled when texture coordinates are outside of the typical 0..1 range. For example, Repeat makes the texture tile, whereas Clamp makes the texture edge pixels be stretched when outside of of 0..1 range.

Additional resources: Texture.wrapMode, texture assets.

### Properties

| Property | Description |
| --- | --- |
| Repeat | Tiles the texture, creating a repeating pattern. |
| Clamp | Clamps the texture to the last pixel at the edge. |
| Mirror | Tiles the texture, creating a repeating pattern by mirroring it at every integer boundary. |
| MirrorOnce | Mirrors the texture once, then clamps to edge pixels. |
