<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Font-textureRebuilt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set a function to be called when the dynamic font texture is rebuilt.

This lets you set a delegate function to be called when the dynamic font texture is rebuilt. This will happen when new characters added to the font no longer fit into the texture. The font texture will then be rebuilt to fit all needed characters. If you use custom meshes to render characters from the font, you will need to use this callback to regenerate such meshes, as previous UV coordinates from the Font will no longer be valid. Additional resources: Example at RequestCharactersInTexture.
