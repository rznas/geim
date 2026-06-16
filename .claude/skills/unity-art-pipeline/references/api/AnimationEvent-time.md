<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationEvent-time.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The time at which the event will be fired off.

The AnimationEvent obtains the clip length from its attached clip. The time property determines when the event is processed. For example, if the clip length is 2s and `time` is set to 1.5f, then the function is called 1.5s after the animation starts, and then every 2s. The example on the AnimationEvent page shows how to use the `time` property.
