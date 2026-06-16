<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WebGL-geometricMemoryGrowthStep.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Heap memory growth factor.

Advanced tuning option to control the growth step for the heap memory if geometric memory growth is enabled (Recommended default: 0.2). A growth factor of 0.2 means that the size of the heap is increased by 0.2 * currentHeapSize each time the heap needs to grow.
