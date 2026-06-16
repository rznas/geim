<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTextureCreationFlags.EnableRandomWrite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set this flag to enable random access writes to the RenderTexture from shaders. Normally, pixel shaders only operate on pixels they are given. Compute shaders cannot write to textures without this flag. Random write enables shaders to write to arbitrary locations on a RenderTexture. See RenderTexture.enableRandomWrite for more details, including supported platforms.
