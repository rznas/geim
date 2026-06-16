<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationMode.SampleAnimationClip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | The root GameObject for the animation. |
| clip | The AnimationClip to sample. |
| time | The time at which to sample. |

### Returns

**void** Returns true when the Editor is in Animation mode. Returns false otherwise.

### Description

Samples the AnimationClip for the GameObject and also records modified properties when in Animation mode.

If this method returns true, you can use SampleAnimationClip to animate the attached object.
 
 **Note:** The script example for AnimationMode demonstrates how to use InAnimationMode.
