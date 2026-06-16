<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ImageConversion.EnableLegacyPngGammaRuntimeLoadBehavior.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables legacy PNG runtime import behavior.

In previous versions of Unity, texture data from all PNG textures containing a gAMA block was returned in gamma 2.0 space. If you want to retain this old behavior, for example when working with older projects that dynamically load textures using ImageConversion.LoadImage or `Texture2D.LoadImage`, set this flag to `true`.
