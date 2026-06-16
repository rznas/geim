<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HDROutputSettings-maxFullFrameToneMapLuminance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Maximum input luminance at which gradation is preserved even when the entire screen is bright.

Measured in nits. This value is -1 if Unity cannot obtain a value from the HDR display. Accessing this member results in an exception if HDR is not available on the display. Use HDROutputSettings.available for the display to check that HDR is available.
