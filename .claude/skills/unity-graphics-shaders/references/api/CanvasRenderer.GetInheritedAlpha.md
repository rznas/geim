<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CanvasRenderer.GetInheritedAlpha.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**float** The calculated inherited alpha.

### Description

Get the final inherited alpha calculated by including all the parent alphas from included parent CanvasGroups.

Alpha is calculated by getting the alpha from all parent CanvasGroups (if GetIgnoreParentGroups is false) and multiplying the original alpha.
