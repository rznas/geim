<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.ReprojectionMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The kind of reprojection the app requests to stabilize rendering relative to the user's head motion.

### Properties

| Property | Description |
| --- | --- |
| Unspecified | Does not specify the type of reprojection mode to use. |
| PositionAndOrientation | Stabilizes the image for changes to both the user's head position and orientation. This is best for world-locked content that you want to remain stationary as the user walks around. |
| OrientationOnly | Stabilizes the image only for changes to the user's head orientation, ignores changes in position. This is best for body-locked content that you want to move with the user as they walk around, such as a 360-degree video. |
| None | Does not stabilize the image for the user's head motion and instead fixes it in the display. Note that this is only comfortable for users when you use it sparingly, for example when the only visible content is a small cursor. |
