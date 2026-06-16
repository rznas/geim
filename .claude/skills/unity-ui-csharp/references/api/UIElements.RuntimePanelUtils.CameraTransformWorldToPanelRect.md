<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.RuntimePanelUtils.CameraTransformWorldToPanelRect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| panel | The local coordinates reference panel. |
| worldPosition | The world position to transform. |
| worldSize | The world size to transform. The object in the panel will appear to have that size when compared to other 3D objects at neighboring positions. |
| camera | The Camera used for internal WorldToScreen transformation. |

### Returns

**Rect** A (position, size) Rect in panel coordinates that corresponds to the provided world position and size.

### Description

Transforms a world position and size (in world units) to their equivalent local position and size on given panel, using provided camera for internal WorldToScreen transformation.
