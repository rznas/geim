<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationClip.AddEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| evt | AnimationEvent to add. |

### Description

Adds an animation event to the clip.

Note that events added with AddEvent persist until play mode is exited or the is player quit. If you want to add an event to a clip persistently, use AnimationUtility.SetAnimationEvents from the Unity editor.

Additional resources: AnimationEvent, AnimationUtility classes.
