<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Canvas-pixelPerfect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Forces pixel alignment for elements in the canvas. It only applies when Canvas.renderMode is set to Screen Space.

Enabling pixelPerfect can make elements appear sharper and prevent blurriness. However, if many elements are scaled or rotated, or use subtle animated position or scaling, it may be advantageous to disable pixelPerfect, since the movement will be smoother without.
