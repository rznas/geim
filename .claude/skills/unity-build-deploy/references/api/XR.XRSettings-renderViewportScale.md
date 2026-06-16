<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRSettings-renderViewportScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls how much of the allocated eye texture should be used for rendering.

Valid range is 0.0 to 1.0. This value can be changed at runtime without reallocating eye textures. Therefore it is useful for dynamically adjusting eye render resolution. This value cannot be changed while cameras are being rendered. Attempts to change the value during rendering will be ignored and an error will be logged. Changes made during gameplay updates won't be applied until the next frame.

Some XR platforms might not immediately use this value, or ignore it. To check the current applied viewport scale, use XRSettings.appliedRenderViewportScale.

This value does not support deferred rendering. Attempts to change the value in the presence of a camera using deferred rendering will be ignored and an error will be logged.
