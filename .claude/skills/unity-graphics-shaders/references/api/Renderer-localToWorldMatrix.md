<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Renderer-localToWorldMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Matrix that transforms a point from local space into world space (Read Only).

Use this matrix for shader parameters and calculations related to rendering instead of Transform.localToWorldMatrix. The matrix from the Transform component does not take into account features such as static batching which modify a mesh's vertex coordinates.
