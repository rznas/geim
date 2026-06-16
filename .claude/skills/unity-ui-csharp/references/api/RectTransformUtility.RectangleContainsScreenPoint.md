<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RectTransformUtility.RectangleContainsScreenPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rect | The RectTransform to test with. |
| screenPoint | The screen point to test. |

### Returns

**bool** True if the point is inside the rectangle.

### Description

Does the RectTransform contain the screen point?

### Parameters

| Parameter | Description |
| --- | --- |
| rect | The RectTransform to test with. |
| screenPoint | The screen point to test. |
| cam | The camera from which the test is performed from. (Optional) |

### Returns

**bool** True if the point is inside the rectangle.

### Description

Does the RectTransform contain the screen point as seen from the given camera?

### Parameters

| Parameter | Description |
| --- | --- |
| rect | The RectTransform to test with. |
| screenPoint | The screen point to test. |
| cam | The camera from which the test is performed from. (Optional) |
| offset | The offset to apply to the RectTransform. |

### Returns

**bool** True if the point is inside the rectangle.

### Description

Does the RectTransform, with the given offset, contain the screen point as seen from the given camera?
