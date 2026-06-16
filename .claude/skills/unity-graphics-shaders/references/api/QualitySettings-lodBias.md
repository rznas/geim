<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings-lodBias.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The multiplier that scales the LOD transition thresholds for all LOD Groups.

This property is a global control that affects how LOD transitions behave across all LOD Groups. The minimum value is 0.1. Increase the value to delay the transition to lower-quality LODs, to keep higher-detail LODs visible for longer. An increased bias can improve visual fidelity but may lead to higher rendering costs. Decrease the value to make transitions to lower-quality LODs happen sooner. A decreased bias can reduce rendering costs but may degrade visual fidelity.

**Note**: This property affects only LOD Groups and doesn't influence LOD selection for mesh LOD or other systems.
