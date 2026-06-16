<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PanelInputConfiguration-defaultEventCameraIsMainCamera.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This option is enabled by default, automatically selecting the Main Camera (if available) as the Event Camera to transform screen positions into world-space rays.

If the Main Camera changes, the Event Camera is updated automatically with the new Camera. 

 If no Main Camera is active, screen-based events are disabled until a Main Camera becomes active again. 

If World Space input is disabled, this property has no effect.
