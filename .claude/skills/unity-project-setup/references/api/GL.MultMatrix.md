<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.MultMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the current model matrix to the one specified.

The model matrix is typically the local-to-world matrix of the object being drawn.

Changing the model, view or projection matrices overrides the current rendering matrices. It is good practice to save and restore these matrices using GL.PushMatrix and GL.PopMatrix.
