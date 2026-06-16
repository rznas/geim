<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildAssetBundleOptions.StripUnatlasedSpriteCopies.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use to prevent duplicating a texture when it is referenced in multiple bundles. This would primarily happen with particle systems. The new behavior does not duplicate the texture if the sprite does not belong to an atlas. Using this flag is the desired behavior, but is not set by default for backwards compatability reasons.
