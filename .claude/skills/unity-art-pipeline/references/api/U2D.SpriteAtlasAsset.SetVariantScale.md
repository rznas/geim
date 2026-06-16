<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.SpriteAtlasAsset.SetVariantScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The multiplier to downscale the Master Atlas's Texture by, the recommended range is from [0.1 ~ 0.99]. |

### Description

Sets the value used to downscale the Master's Texture.

While packing a Variant SpriteAtlas, the Master Atlas's packed Texture is duplicated and downscaled according to this value. The resulting new Texture becomes this Atlas's packed Texture.
