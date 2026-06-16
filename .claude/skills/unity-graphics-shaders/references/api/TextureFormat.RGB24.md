<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureFormat.RGB24.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Three channel (RGB) texture format, 8-bits unsigned integer per channel.

Note that there are almost no GPUs that support this format natively, so at texture load time it is converted into an RGBA32 format. RGB24 is thus only useful for some game build size savings.

Additional resources: Texture2D, texture assets.
