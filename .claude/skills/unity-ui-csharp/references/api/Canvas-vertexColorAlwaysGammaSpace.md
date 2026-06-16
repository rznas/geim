<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Canvas-vertexColorAlwaysGammaSpace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should the Canvas vertex color always be in gamma space before passing to the UI shaders in linear color space work flow.

Keeping the Canvas vertex color in gamma space will allow the gamma to linear conversion to happen in UI shaders, where colors have higher precision. This enhances UI color precision in linear color space workflow, especially for darker colors. Buit-in UI shaders include gamma to linear conversion. However, in custom UI shaders, user needs to provide gamma to linear conversion.
