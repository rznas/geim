<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorState-timeParameter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If timeParameterActive is true, the value of this Parameter will be used instead of normalized time.

Parametrized Time and Root motion are not compatible. Root motion relies on previous and current time to compute a delta displacement. When you activate parametrized time, root motion is not computed anymore when this state is playing.
