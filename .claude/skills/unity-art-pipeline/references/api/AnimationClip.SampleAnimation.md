<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationClip.SampleAnimation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| go | The animated game object. |
| time | The time to sample an animation. |

### Description

Samples an animation at a given time for any animated properties.

It is recommended to use the Animation interface instead for performance reasons. This will sample `animation` at the given `time`. Any component properties that are animated in the clip will be replaced with the sampled value. Most of the time you want to use Animation.Play instead. SampleAnimation is useful when you need to jump between frames in an unordered way or based on some special input.

Additional resources: Animation.
