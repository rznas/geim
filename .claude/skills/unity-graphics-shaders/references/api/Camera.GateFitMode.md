<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.GateFitMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enum used to specify how the sensor gate (sensor frame) defined by Camera.sensorSize fits into the resolution gate (render frame).

### Properties

| Property | Description |
| --- | --- |
| Vertical | Fit the resolution gate vertically within the sensor gate. |
| Horizontal | Fit the resolution gate horizontally within the sensor gate. |
| Fill | Automatically selects a horizontal or vertical fit so that the sensor gate fits completely inside the resolution gate. |
| Overscan | Automatically selects a horizontal or vertical fit so that the render frame fits completely inside the resolution gate. |
| None | Stretch the sensor gate to fit exactly into the resolution gate. |
