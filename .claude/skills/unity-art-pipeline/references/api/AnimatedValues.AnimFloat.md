<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatedValues.AnimFloat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An animated float value.

Animated using Mathf.Lerp.

### Constructors

| Constructor | Description |
| --- | --- |
| AnimFloat | Constructor. |

### Protected Methods

| Method | Description |
| --- | --- |
| GetValue | Type specific implementation of BaseAnimValue_1.GetValue. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| isAnimating | Is the value currently animating. |
| speed | Speed of the tween. |
| target | Target to tween towards. |
| value | Current value of the animation. |
| valueChanged | Callback while the value is changing. |

### Protected Methods

| Method | Description |
| --- | --- |
| BeginAnimating | Begin an animation moving from the start value to the target value. |
| StopAnim | Stop the animation and assign the given value. |
