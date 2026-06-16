<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureFormat.RGB9e5Float.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

RGB HDR format, with 9 bit mantissa per channel and a 5 bit shared exponent.

Three partial-precision floating-point numbers encoded into a single 32-bit value all sharing the same 5-bit exponent (variant of s10e5, which is sign bit, 10-bit mantissa, and 5-bit biased(15) exponent). There is no sign bit, and there is a shared 5-bit biased(15) exponent and a 9-bit mantissa for each channel. RGB9e5Float is implemented for Direct3D 11, Direct3D 12, Xbox One, Playstation 4, OpenGL 3.0+, metal and Vulkan. The format is used for Precomputed Enlighten Realtime Global Illumination textures on supported platforms.

Additional resources: Texture2D.format, texture assets.
