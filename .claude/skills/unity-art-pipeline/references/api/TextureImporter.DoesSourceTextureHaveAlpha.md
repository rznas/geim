<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporter.DoesSourceTextureHaveAlpha.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows you to check whether the texture source image has an alpha channel.

This method throws an exception if the texture has not finished importing. For example, it would throw an exception if you called this method in an AssetPostprocessor.OnPreprocessAsset callback.
