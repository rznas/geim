<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.LINE_STRIP.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Mode for Begin: draw line strip.

Draws lines between each vertex passed, from the beginning to the end. If you pass three vertices, A, B and C, two lines are drawn: one between A and B, and one between B and C.

To set up the screen for drawing in 2D, use GL.LoadOrtho or GL.LoadPixelMatrix. To set up the screen for drawing in 3D, use GL.LoadIdentity followed by GL.MultMatrix with the desired transformation matrix.

Additional resources: GL.Begin, GL.End.
