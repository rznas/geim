<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture-isDataSRGB.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns `true` if the texture pixel data is in sRGB color space.

This property describes whether the texture pixel data on disk, CPU memory, and GPU memory is in sRGB color space. Use GraphicsFormatUtility.IsSRGBFormat with Texture.graphicsFormat to check the GPU texture color space, which determines how Unity samples the pixel data on the GPU.

Additional resources: Linear and Gamma rendering.
