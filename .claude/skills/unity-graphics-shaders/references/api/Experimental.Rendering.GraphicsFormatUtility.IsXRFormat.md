<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsFormatUtility.IsXRFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if the format is an extended range format. With extended range format, the blue, green, and red components are linearly encoded, and their values range from -0.752941 to 1.25098. The alpha component is always clamped to a [0.0, 1.0] range in sampling, rendering, and writing operations, despite supporting values outside this range. Returns false otherwise.
