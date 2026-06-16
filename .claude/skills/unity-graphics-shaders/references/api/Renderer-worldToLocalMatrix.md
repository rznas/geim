<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Renderer-worldToLocalMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Matrix that transforms a point from world space into local space (Read Only).

Use this matrix for shader parameters and calculations related to rendering instead of Transform.worldToLocalMatrix. The matrix from the Transform component does not take into account features such as static batching which modify a mesh's vertex coordinates.
