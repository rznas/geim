<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WrapMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines how time is treated outside of the keyframed range of an AnimationClip or AnimationCurve.

The WrapMode that the animation system uses for a specific animation is determined this way:
 You can set the WrapMode of an AnimationClip in the import settings of the clip. This is the recommended way to control the WrapMode.
 When an AnimationState is created, it inherits its WrapMode from the AnimationClip it is created from, but you can also change it from code.
 If the WrapMode of an AnimationState is set to Default, the animation system will use the WrapMode from the Animation component.

### Properties

| Property | Description |
| --- | --- |
| Once | When time reaches the end of the animation clip, the clip will automatically stop playing and time will be reset to beginning of the clip. |
| Loop | When time reaches the end of the animation clip, time will continue at the beginning. |
| PingPong | When time reaches the end of the animation clip, time will ping pong back between beginning and end. |
| Default | Reads the default repeat mode set higher up. |
| ClampForever | Plays back the animation. When it reaches the end, it will keep playing the last frame and never stop playing. |
