<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PanelInputConfiguration-eventCameras.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The list of Event Cameras used to transform screen positions into world-space rays.

If multiple Event Cameras are specified, the Event Cameras are processed sequentially until one of the cameras produces a ray that hits a Collider. 

If no Event Camera is specified, screen-based events are disabled.

If World Space input is disabled, this property has no effect.
