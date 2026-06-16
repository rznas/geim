<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.GameObjectRecorder.SaveToClip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clip | The destination clip. If this clip has animation curves, they will be removed. |
| fps | The frames per second (FPS) for the clip. If no value is specified, by default, this method uses 60 FPS. |
| filterOptions | The filtering options for processing the animation curves when saved to the destination clip. If no options are specified, by default, this method filters out irrelevant keys by applying a light compression of 0.5 for positionError, rotationError, scaleError and floatError. |

### Description

Saves recorded animation to a destination clip.

Note: This method computes the tangents.
