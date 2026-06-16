<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-interpolation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interpolation provides a way to manage the appearance of jitter in the movement of your Rigidbody GameObjects at run time.

Interpolation calculates the pose of a Rigidbody in frames that fall between physics timestep updates, to reduce the appearance of visible jitter. It is particularly useful for player character GameObjects, and any other GameObject that the camera follows. By default, interpolation is disabled. When interpolation or extrapolation is enabled, the physics system takes control of the Rigidbody's transform. For this reason, you should follow any direct (non-physics) change to the transform with a Physics.SyncTransforms call. Otherwise, Unity ignores any transform change that does not originate from the physics system. Physics simulation runs at discrete timesteps, while graphics are rendered at variable frame rates. This can lead to visual jitter on some GameObjects, because the physics and graphics updates are not synchronized. The visual effect is particularly noticeable on GameObjects that the camera follows (such as player characters and vehicles). It is recommended to turn on interpolation for the main character but disable it for everything else.
