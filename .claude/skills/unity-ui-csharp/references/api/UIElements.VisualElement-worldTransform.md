<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElement-worldTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a matrix that cumulates the following transformations (in order): Local scalingLocal rotationLocal translationLayout translationParent `worldTransform` (recursive definition - consider the identity matrix when there's no parent)

Multiplying the `layout` rect by this matrix is incorrect because it already contains the translation.
