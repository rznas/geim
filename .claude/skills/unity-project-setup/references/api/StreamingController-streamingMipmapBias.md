<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StreamingController-streamingMipmapBias.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Offset applied to the mipmap level chosen by the texture streaming system for any textures visible from this camera. This Offset can take either a positive or negative value.

When texture streaming is active, Unity loads mipmap levels for textures based on their distance from all active cameras. This bias is added to all textures visible from this camera and allows you to force smaller or larger mipmap levels to be loaded for textures visible from this camera.
