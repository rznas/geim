<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UsageHints.LargePixelCoverage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Optimizes rendering of a VisuaElement that covers a large pixel area on screen.

The renderer will break the batch and render this element using a specialized shader. Breaking a batch decreases CPU performance but the specialized shader achieves better GPU performance. Set this usage hint on large VisualElements that have a significant impact on GPU performance.
