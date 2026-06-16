<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL-modelview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets or sets the modelview matrix.

The getter returns the product of the model and view matrices. The setter assigns an identity to the model matrix and the provided matrix to the view matrix.

Changing the model, view or projection matrices overrides the current rendering matrices. It is good practice to save and restore these matrices using GL.PushMatrix and GL.PopMatrix.
