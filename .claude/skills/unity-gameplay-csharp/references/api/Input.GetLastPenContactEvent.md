<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input.GetLastPenContactEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**PenData** Pen event details in the struct.

### Description

Returns the PenData for the last stored pen up or down event.

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

PenData.type will be set to PenEventType.PenEventType if the event has already been processed by UIToolKit. GetPenEvent should be used to retrieve previous pen events.
