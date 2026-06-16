<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElementExtensions.WorldToLocal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ele | The element to use as a reference for the local space. |
| p | The point to transform, in panel coordinates. |

### Returns

**Vector2** A point in the local space of the element.

### Description

Transforms a point from panel coordinates into the local space of the element.

Attach the element to a panel. The element must have a valid VisualElement.layout. Otherwise, this method might return invalid results. 

 If the element's transform contains 3D information, use `ele.worldTransform.inverse.MultiplyPoint3x4(p)` to get a proper 3D transformation.

### Parameters

| Parameter | Description |
| --- | --- |
| ele | The element to use as a reference for the local space. |
| r | The rectangle to transform, in panel coordinates. |

### Returns

**Rect** A rectangle in the local space of the element.

### Description

Transforms a rectangle from panel coordinates into the local space of the element.

Attach the element to a panel. The element must have a valid VisualElement.layout. Otherwise, this method might return invalid results.
