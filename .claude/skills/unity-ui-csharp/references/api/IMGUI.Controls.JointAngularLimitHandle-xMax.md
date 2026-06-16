<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.JointAngularLimitHandle-xMax.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns or specifies the maximum angular motion about the x-axis.

The value returned by this property depends on the current value of the xMotion property. If it is ConfigurableJointMotion.Locked, then it will always return 0. If it is ConfigurableJointMotion.Free, then it will always return the upper limit of xRange. If it is ConfigurableJointMotion.Limited, then it will be clamped between the upper limit of xRange and the current value of xMin.

Additional resources: xMin, xMotion, xRange.
