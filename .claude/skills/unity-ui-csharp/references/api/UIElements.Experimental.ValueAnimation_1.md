<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Experimental.ValueAnimation_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Implementation object for transition animations.

### Properties

| Property | Description |
| --- | --- |
| autoRecycle | Returns true if this animation object will be automatically returned to the instance pool after the animation has completed. |
| durationMs | Duration of the animation in milliseconds. |
| easingCurve | Smoothing function related to this animation. Default value is Easing.OutQuad. |
| from | The animation start value. |
| initialValue | Callback invoked when the from field has not been set, in order to retrieve the starting state of this animation. |
| interpolator | Value interpolation method. |
| isRunning | Tells if the animation is currently active. |
| onAnimationCompleted | Callback invoked when this animation has completed. |
| to | The animation end value. |
| valueUpdated | Callback invoked after every value interpolation. |

### Constructors

| Constructor | Description |
| --- | --- |
| ValueAnimation_1 | Constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| Ease | Sets the easing function. |
| KeepAlive | Will not return the object to the instance pool when the animation has completed. |
| OnCompleted | Sets a callback invoked when this animation has completed. |
| Recycle | Returns this animation object into its object pool. |
| Start | Starts the animation using this object's values. |
| Stop | Stops this animation. |

### Static Methods

| Method | Description |
| --- | --- |
| Create | Creates a new ValueAnimation object or returns an available one from it's instance pool. |
