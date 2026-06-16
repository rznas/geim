<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatedValues.BaseAnimValue_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Abstract base class for Animated Values.

Animated Values are an editor only concept for values that have a current value and a target. The value will tween towards the target at a given speed.

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
