<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.InputTracking-disablePositionalTracking.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disables positional tracking in XR. This takes effect the next time the head pose is sampled. If set to true the camera only tracks headset rotation state.

This will disable the neck model in seated XR experiences. The only positional component remaining is the space between the eyes.

This functionality is most useful for 360 video use case where you don't want to allow the head to translate at all.
