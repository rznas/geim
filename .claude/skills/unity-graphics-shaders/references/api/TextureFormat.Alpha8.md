<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureFormat.Alpha8.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Alpha-only texture format, 8 bit integer.

This format only stores the alpha channel and doesn't hold any color data. It can be used by custom shaders for computing alpha independently of the other channels. Set the texture data in the same way as with other textures, for example using Texture2D.SetPixels, except only the alpha component from Color is used.

Additional resources: Texture2D, texture assets.
