<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RigidbodyInterpolation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Rigidbody interpolation mode.

Interpolation calculates the pose of a Rigidbody in frames that fall between physics timestep updates, to reduce the appearance of visible jitter. It is particularly useful for player character GameObjects, and any other GameObject that the camera follows. By default, interpolation is disabled. When interpolation or extrapolation is enabled, the physics system takes control of the Rigidbody's transform. For this reason, you should follow any direct (non-physics) change to the transform with a Physics.SyncTransforms call. Otherwise, Unity ignores any transform change that does not originate from the physics system.

For the main characters or vehicles that are followed by the camera it is recommended to use interpolation. For any other rigidbodies it is recommended not to use interpolation.

Additional resources: Rigidbody.interpolation.

### Properties

| Property | Description |
| --- | --- |
| None | No Interpolation. |
| Interpolate | Interpolation will always lag a little bit behind but can be smoother than extrapolation. |
| Extrapolate | Extrapolation will predict the position of the rigidbody based on the current velocity. |
