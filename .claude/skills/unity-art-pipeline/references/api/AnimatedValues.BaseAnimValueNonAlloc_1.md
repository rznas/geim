<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatedValues.BaseAnimValueNonAlloc_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Abstract base class that provides an allocation free version of BaseAnimValue.

Abstract base class that provides an allocation free version of BaseAnimValue. See BaseAnimValue.

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
| GetValue | Abstract function to be overridden in derived types. Should return the current value of the animated value. |
| StopAnim | Stop the animation and assign the given value. |
