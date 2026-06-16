<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.JointAngularLimitHandle-zMin.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns or specifies the minimum angular motion about the z-axis.

The value returned by this property depends on the current value of the zMotion property. If it is ConfigurableJointMotion.Locked, then it will always return 0. If it is ConfigurableJointMotion.Free, then it will always return the lower limit of zRange. If it is ConfigurableJointMotion.Limited, then it will be clamped between the lower limit of zRange and the current value of zMax.

Additional resources: zMax, zMotion, zRange.
