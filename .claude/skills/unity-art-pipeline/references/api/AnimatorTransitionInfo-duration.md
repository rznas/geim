<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorTransitionInfo-duration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Duration of the transition.

Depending on AnimatorTransitionInfo.durationUnit the duration can either be expressed in seconds (i.e. DurationUnit.Fixed) or in percentage (i.e. DurationUnit.Normalized). A normalized duration is based on the source state duration.

Note: a normalized duration converted in seconds can change from frame to frame, since the source state duration can change depending on varying factors, like the weights in a blendtree.
