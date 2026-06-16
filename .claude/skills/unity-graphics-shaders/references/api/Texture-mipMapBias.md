<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture-mipMapBias.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The mipmap bias of the Texture.

A positive bias makes a Texture appear extra blurry, while a negative bias sharpens the Texture.

Note that using large negative bias can reduce performance, so it's not recommended to use more than -0.5 negative bias. In most cases you can achieve better sharpening of the Texture by using anisotropic filtering.

Mipmap bias doesn't work with the following:

- MaterialPropertyBlocks.
- Some graphics APIs. For example Metal, or OpenGL ES unless you use custom shaders.

Additional resources: Texture.anisoLevel, Texture assets.
