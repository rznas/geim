<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShaderPropertyFlags.NoScaleOffset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Do not show UV scale/offset fields next to Textures in the default Material Inspector.

This flag is only relevant to Texture shader properties, and only hides the UI for UV scale/offset fields. Unity still serializes the underlying "*YourTexturePropertyName*_ST" vector property in the Material Assets.

This flag corresponds to the "[NoScaleOffset]" attribute.
