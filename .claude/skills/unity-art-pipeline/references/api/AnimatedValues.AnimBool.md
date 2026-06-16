<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatedValues.AnimBool.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Lerp from 0 - 1.

When value is 0 returns false, when value > 0.5 returns true. Animated using Mathf.Lerp.

### Properties

| Property | Description |
| --- | --- |
| faded | Retuns the float value of the tween. |

### Constructors

| Constructor | Description |
| --- | --- |
| AnimBool | Constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| Fade | Returns a value between from and to depending on the current value of the bools animation. |

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
