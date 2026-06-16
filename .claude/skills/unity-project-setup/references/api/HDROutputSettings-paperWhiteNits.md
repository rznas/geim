<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HDROutputSettings-paperWhiteNits.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The base luminance of a white paper surface in nits or candela per square meter (cd/m2).

This value is used if HDROutputSettings.automaticHDRTonemapping is true. The higher this value, the brighter the resulting image appears on the HDR display.

Unity only uses this value if HDROutputSettings.automaticHDRTonemapping is true and HDR is active on the display.

Accessing this member results in an exception if HDR is not available on the display. Use HDROutputSettings.available for the display to check that HDR is available.
