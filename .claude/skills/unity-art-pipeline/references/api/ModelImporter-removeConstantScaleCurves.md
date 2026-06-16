<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter-removeConstantScaleCurves.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Removes constant animation curves with values identical to the object initial scale value.

The FBX transform stack includes transform pivots that can be used to offset rotation and scaling transformations. When importing FBX content to Unity, transforms and animations are converted into a simpler transform stack and this operation can create additional animation curves. Enable this property to remove unnecessary scale curves.
