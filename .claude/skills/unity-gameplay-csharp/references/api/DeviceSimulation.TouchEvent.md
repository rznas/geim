<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DeviceSimulation.TouchEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Representation of a single touch event coming from a Device Simulator. Subscribe to DeviceSimulator.touchScreenInput to receive these events.

### Properties

| Property | Description |
| --- | --- |
| phase | Phase of the touch event. |
| position | On-screen position of the touch event. The zero point is at the bottom-left corner of the screen in pixel coordinates. |
| touchId | The unique identifier for the touch. Unity reuses identifiers after the touch ends. |
