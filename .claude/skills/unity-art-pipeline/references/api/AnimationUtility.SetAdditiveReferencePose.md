<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationUtility.SetAdditiveReferencePose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clip | The animation clip to use. |
| referenceClip | The animation clip containing the reference pose. |
| time | The time that when the reference pose occurs in `referenceClip`. |

### Description

Sets the additive reference pose from `referenceClip` at `time` for animation clip `clip`.

By default, an animation clip used in an additive layer uses the pose at time 0 as its reference pose. This is a big limitation as the reference pose need to be in the played clip.
 This function allow you to change this behaviour and use a reference pose from any clip.
