<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.CurveFilterOptions-unrollRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether to apply rotation unrolling. This option is enabled by default.

Enable this option to unroll rotation curves. This results in rotation curves with keys set to all values rather than being set between -180 and 180 degrees. Unrolling rotation curves may apply keyframe reduction. Use CurveFilterOptions.floatError to set the keyframe reduction tolerance. Note that the unroll filter is applied to curves with the bindings localEulerAngles, localEulerAnglesBaked and localEulerAnglesRaw bound to transforms. The unroll filter is only applied to rotations with curves present on all three axes (x, y, and z).
