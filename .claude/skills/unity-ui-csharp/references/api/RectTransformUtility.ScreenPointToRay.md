<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RectTransformUtility.ScreenPointToRay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cam | The camera from which the ray originates. (Optional) |
| screenPos | The screen point. |

### Returns

**Ray** The ray going from camera through the screen point if the camera is given, or from the screen point going forward if no camera is given.

### Description

Transforms a screen space position into a ray.
