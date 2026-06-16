<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporterSettings-alphaIsTransparency.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If the alpha channel of your texture represents transparency, enable this property to dilate the color channels of visible texels into fully transparent areas. This effectively adds padding around transparent areas that prevents filtering artifacts from forming on their edges. Unity does not support this property for HDR textures.

This property makes the color data of invisible texels undefined. Disable this property to preserve invisible texels' original color data.
