<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimationLayerMixerPlayable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An implementation of IPlayable that controls an animation layer mixer.

NOTE: You can use PlayableExtensions methods with AnimationLayerMixerPlayable objects.

### Static Properties

| Property | Description |
| --- | --- |
| Null | Returns an invalid AnimationLayerMixerPlayable. |

### Public Methods

| Method | Description |
| --- | --- |
| IsLayerAdditive | Returns true if the layer is additive, false otherwise. |
| SetLayerAdditive | Specifies whether a layer is additive or not. Additive layers blend with previous layers. |
| SetLayerMaskFromAvatarMask | Sets the mask for the current layer. |

### Static Methods

| Method | Description |
| --- | --- |
| Create | Creates an AnimationLayerMixerPlayable in the PlayableGraph. |
