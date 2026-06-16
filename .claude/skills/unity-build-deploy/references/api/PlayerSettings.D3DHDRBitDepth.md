<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.D3DHDRBitDepth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of bits in each color channel for swap chain buffers. (Direct3D 11 and Direct3D 12 mode).

The bit count also defines the method Unity uses to render content to the display. When set to `10`, Unity will use R10G10B10A2 buffer format, Rec2020 primaries and ST2084 PQ encoding. When set to `16`, Unity will use R16G16B16A16 buffer format, Rec709 primaries and linear color (no encoding).
