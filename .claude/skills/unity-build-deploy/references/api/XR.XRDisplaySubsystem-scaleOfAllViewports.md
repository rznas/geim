<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem-scaleOfAllViewports.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls how much of the allocated display texture should be used for rendering.

Valid range is 0.0 to 1.0. This value can be changed at runtime without reallocating textures, which makes it useful for dynamically adjusting render resolution. Changes to this value take effect the next time the scene begins rendering (after LateUpdate).

Some display providers might ignore this value or clamp it. To fetch the applied viewport scale currently in use, check XRDisplaySubsystem.appliedViewportScale 

This value is not supported with the legacy deferred renderer. If you attempt to change the value in the presence of camera that uses deferred rendering, Unity will ignore it and log a warning.
