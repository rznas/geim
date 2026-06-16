<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Various utilities for animator manipulation.

### Static Methods

| Method | Description |
| --- | --- |
| DeoptimizeTransformHierarchy | This function will recreate all transform hierarchy under GameObject. |
| OptimizeTransformHierarchy | This function will remove all transform hierarchy under GameObject, the animator will write directly transform matrices into the skin mesh matrices saving many CPU cycles. |
