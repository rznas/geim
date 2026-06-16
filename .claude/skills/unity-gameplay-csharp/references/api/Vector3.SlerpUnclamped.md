<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3.SlerpUnclamped.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Spherically interpolates between two vectors.

Interpolates between `a` and `b` by amount `t`. The difference between this and linear interpolation (aka, "lerp") is that the vectors are treated as directions rather than points in space. The direction of the returned vector is interpolated by the angle and its magnitude is interpolated between the magnitudes of `from` and `to`.

**Note:** This static method can slerp beyond the `a` and `b` vectors. This means `t` can be less than zero or greater than one.

Additional resources: Slerp.
