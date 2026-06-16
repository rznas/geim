<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsFormatUtility.IsHDRFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if the format is capable of representing HDR data. Returns false otherwise.

Formats able to represent values beyond the typical LDR limit of 1.0f should return true. Note that some formats that do not qualify as HDR according to this function are able to represent a slightly larger range (like (-0.75 to 1.25) than what is usual for LDR formats. Identify these "Extended Range" formats with GraphicsFormatUtility.IsXRFormat. Additional resources: GraphicsFormatUtility.IsXRFormat.
