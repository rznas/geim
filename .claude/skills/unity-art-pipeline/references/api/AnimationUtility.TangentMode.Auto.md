<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationUtility.TangentMode.Auto.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The tangents are automatically set to make the curve go smoothly through the key.

This was the standard tangent mode prior to Unity 5.5, however way the curve was calculated would sometimes cause the value to overshoot before reaching the proper value.

In Unity 5.5 and onwards, the tangent calculations have been improved to avoid overshoots, but this legacy mode remains in the engine to allow for backward compatibility.

In general you should use AnimationUtility.TangentMode.ClampedAuto unless you are specifically dealing with legacy assets which relied on the old behavior.
