<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles-matrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Matrix for all handle operations. This is used by functions in HandleUtility and Handles to transform controls.

To make all Handle routines work in the local coordinate space of a GameObject, set this to Transform.localToWorldMatrix.

The handles matrix is reset to identity at the end of every frame. It is considered best practice to store and restore the state of this matrix during use. See DrawingScope for a convenient means of preserving handle global state.
