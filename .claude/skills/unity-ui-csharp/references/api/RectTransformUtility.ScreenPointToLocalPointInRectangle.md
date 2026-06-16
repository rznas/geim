<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RectTransformUtility.ScreenPointToLocalPointInRectangle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rect | The RectTransform to find a point inside. |
| screenPoint | Screen space position. |
| cam | The camera associated with the screen space position. |
| localPoint | Point in local space of the rect transform. |

### Returns

**bool** Returns true if the plane of the RectTransform is hit, regardless of whether the point is inside the rectangle.

### Description

Transform a screen space point to a position in the local space of a RectTransform that is on the plane of its rectangle.

The cam parameter should be the camera associated with the screen point. For a RectTransform in a Canvas set to Screen Space - Overlay mode, the cam parameter should be null.

When ScreenPointToLocalPointInRectangle is used from within an event handler that provides a PointerEventData object, the correct camera can be obtained by using PointerEventData.enterEventData (for hover functionality) or PointerEventData.pressEventCamera (for click functionality). This will automatically use the correct camera (or null) for the given event.
