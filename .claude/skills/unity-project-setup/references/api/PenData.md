<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PenData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Structure describing the status of a pen event.

The PenData struct is used by Unity to store data relating to a pen event. PenData contains information such as the position, pressure, and tilt of the pen for a given pen input event.

### Properties

| Property | Description |
| --- | --- |
| contactType | Contact type of a pen event, can be pen up, pen down, or no contact. |
| deltaPos | The position delta since last pointer event in pixel coordinates. |
| penStatus | Specifies the state of the pen. For example, whether the pen is in contact with the screen or tablet, whether the pen is inverted, and whether buttons are pressed. |
| position | Specifies the position of the pen. |
| pressure | How hard pen pressure is applied, normalized between 0 (no pressure) and 1 (maximum pressure). |
| tilt | Specifies the angle of the pen relative to the X and Y axes, expressed in radians. |
| twist | Specifies the rotation of the pen around its axis, expressed in radians. |
