<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.SpriteAtlasAsset.SetIsVariant.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets whether this Sprite Atlas is a Variant or not.

A Variant does not repack a new Texture from the packable list. Instead, it duplicates the Master Atlas's packed Texture and downscale it by the SpriteAtlasExtensions.SetVariantMultiplier and saves this scaled Texture. Additional resources: SpriteAtlasExtensions.SetMasterAtlas.
