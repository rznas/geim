<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElement.ContainsPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| localPoint | The point in the local space of the element. |

### Returns

**bool** Returns true if the point is contained within the element's layout. Otherwise, returns false.

### Description

Checks if the specified point intersects with this VisualElement's layout.

Unity calls this method to find out what elements are under a cursor (such as a mouse). Do not rely on this method to perform invalidation, since Unity might cache results or skip some invocations of this method for performance reasons. By default, a VisualElement has a rectangular area. Override this method in your VisualElement subclass to customize this behaviour.
