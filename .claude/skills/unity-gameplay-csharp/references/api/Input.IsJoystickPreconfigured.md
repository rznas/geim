<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input.IsJoystickPreconfigured.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| joystickName | The name of the joystick to check (returned by Input.GetJoystickNames). |

### Returns

**bool** True if the joystick layout has been preconfigured; false otherwise.

### Description

Determine whether a particular joystick model has been preconfigured by Unity. (Linux-only).

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

Preconfigured joysticks report indices for buttons and axes in the following order. Buttons: A, B, X, Y, left bumper, right bumper, select, start, guide, left stick press, right stick press Axes: left stick x, left stick y, left trigger, right stick x, right stick y, right trigger, dpad horizontal, dpad vertical.
