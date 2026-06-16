<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The AnimationState gives full control over animation blending.

In most cases the Animation interface is sufficient and easier to use. Use the AnimationState if you need full control over the animation blending any playback process.

The AnimationState interface allows you to modify speed, weight, time and layers while any animation is playing. You can also setup animation mixing and wrapMode.

The Animation.

### Properties

| Property | Description |
| --- | --- |
| blendMode | Which blend mode should be used? |
| clip | The clip that is being played by this animation state. |
| enabled | Enables / disables the animation. |
| length | The length of the animation clip in seconds. |
| name | The name of the animation. |
| normalizedSpeed | The normalized playback speed. |
| normalizedTime | Normalized time of the State. |
| speed | The playback speed of the animation. 1 is normal playback speed. |
| time | The current time of the animation. |
| weight | The weight of animation. |
| wrapMode | Wrapping mode of the animation. |

### Public Methods

| Method | Description |
| --- | --- |
| AddMixingTransform | Adds a transform which should be animated. This allows you to reduce the number of animations you have to create. |
| RemoveMixingTransform | Removes a transform which should be animated. |
