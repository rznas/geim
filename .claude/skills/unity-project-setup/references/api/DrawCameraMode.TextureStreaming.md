<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DrawCameraMode.TextureStreaming.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The camera is set to run in texture streaming debug mode.

In debug mode, a green tint on the texture indicates mipmaps were dropped/discarded but the mipmap level is still sufficient for rendering on screen (the color will be brighter when more mipmaps are dropped, indicating a saving in GPU memory use). A Red tinted texture indicates texture memory restrictions have resulted in the desired mipmap being dropped (the brighter the tint, the further from desired value) and the mipmap level is no longer sufficient to maintain visual quality. No tint indicates that the mipmap level has not changed from its original value.
