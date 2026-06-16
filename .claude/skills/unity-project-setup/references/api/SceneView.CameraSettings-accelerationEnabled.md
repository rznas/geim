<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneView.CameraSettings-accelerationEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables Camera movement acceleration in the SceneView. This makes the Camera accelerate for the duration of movement.

When acceleration is disabled, the camera moves at a constant speed based on the speed value. When acceleration is enabled, the camera initially moves at a speed based on the speed value, and continuously increases speed until movement stops. In both cases, if easingEnabled is enabled, the speed will ease in when the camera starts moving, and ease out when it stops.

With acceleration enabled, you may find it easier to move both short and long distances without needing to frequently change the speed value.
