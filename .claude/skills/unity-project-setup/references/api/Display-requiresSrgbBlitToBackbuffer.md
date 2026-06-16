<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Display-requiresSrgbBlitToBackbuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

True when doing a blit to the back buffer requires manual color space conversion.

This property indicates whether the back buffer requires manual color space conversion from linear color space to sRGB in order to blit to it. The back buffer requires this if you are using linear color space and the back buffer does not support automatic conversion to sRGB.
