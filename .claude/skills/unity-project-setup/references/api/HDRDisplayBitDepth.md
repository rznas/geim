<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HDRDisplayBitDepth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for the number of bits for HDR output in each color channel of swap chain buffers. Applicable when an HDR display is active.

The bit count also defines the method Unity uses to render content to the display.

### Properties

| Property | Description |
| --- | --- |
| BitDepth10 | Unity uses the R10G10B10A2 buffer format and Rec2020 primaries with ST2084 PQ encoding. |
| BitDepth16 | Unity uses the R16G16B16A16 buffer format and Rec709 primaries with linear color (no encoding). |
