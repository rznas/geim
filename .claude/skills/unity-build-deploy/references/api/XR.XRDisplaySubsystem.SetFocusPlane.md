<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.SetFocusPlane.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| point | The position of the focal point in the Scene, relative to the Camera. |
| normal | Surface normal of the plane being viewed at the focal point. |
| velocity | A vector that describes how the focus point moves in the Scene at this point in time. This allows the device to compensate for both your head movement and the movement of the object in the Scene. |

### Description

Sets a point in 3D space that acts as the focal point of the Scene for this frame. This helps to improve the visual fidelity of content around this point. You must set this value every frame.

 Note that specifying body-locked content in focus improves the fidelity of body-locked content at the expense of content not locked to the body. This is especially apparent when the user moves.
