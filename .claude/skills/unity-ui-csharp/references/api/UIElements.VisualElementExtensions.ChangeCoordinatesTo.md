<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElementExtensions.ChangeCoordinatesTo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| src | The element to use as a reference as the source local space. |
| dest | The element to use as a reference as the destination local space. |
| point | The point to transform, in the local space of the source element. |

### Returns

**Vector2** A point in the local space of destination element.

### Description

Transforms a point from the local space of an element to the local space of another element.

Attach both elements to a panel. Each element must have a valid VisualElement.layout. Otherwise, this method might return invalid results.

### Parameters

| Parameter | Description |
| --- | --- |
| src | The element to use as a reference as the source local space. |
| dest | The element to use as a reference as the destination local space. |
| rect | The rectangle to transform, in the local space of the source element. |

### Returns

**Rect** A rectangle in the local space of destination element.

### Description

Transforms a rectangle from the local space of an element to the local space of another element.

Attach both elements to a panel. Each element must have a valid VisualElement.layout. Otherwise, this method might return invalid results.
