<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody.TransformWriteMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The method used to Write the body pose to the Transform. See PhysicsWorld.transformWriteMode.

### Properties

| Property | Description |
| --- | --- |
| Current | The current body pose will be written to the Transform. |
| Interpolate | The interpolated pose from the previous body pose to the current body pose will be written to the Transform. The transform pose is essentially historic. |
| Extrapolate | The pose extrapolated from the current body pose to a future pose based upon the current linear/angular velocities will be written to the Transform. The transform pose is essentially predictive. |
| Off | This body pose won't be written to the Transform. |
