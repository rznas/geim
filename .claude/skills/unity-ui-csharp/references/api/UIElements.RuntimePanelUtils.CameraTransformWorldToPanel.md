<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.RuntimePanelUtils.CameraTransformWorldToPanel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| panel | The local coordinates reference panel. |
| worldPosition | The world position to transform. |
| camera | The Camera used for internal WorldToScreen transformation. |

### Returns

**Vector2** A position in panel coordinates that corresponds to the provided world position.

### Description

Transforms a world absolute position to its equivalent local coordinate on given panel, using provided camera for internal WorldToScreen transformation.
