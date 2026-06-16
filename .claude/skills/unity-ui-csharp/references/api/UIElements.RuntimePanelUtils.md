<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.RuntimePanelUtils.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A collection of static methods that provide simple World, Screen, and Panel coordinate transformations.

### Static Methods

| Method | Description |
| --- | --- |
| CameraTransformWorldToPanel | Transforms a world absolute position to its equivalent local coordinate on given panel, using provided camera for internal WorldToScreen transformation. |
| CameraTransformWorldToPanelRect | Transforms a world position and size (in world units) to their equivalent local position and size on given panel, using provided camera for internal WorldToScreen transformation. |
| ResetDynamicAtlas | Resets the dynamic atlas of the panel. |
| ResetRenderer | Resets the renderer of the panel. Releases all meshes, rendering commands, and pools owned by the renderer. |
| ScreenToPanel | Transforms a screen absolute position to its equivalent local coordinate on given panel. |
| SetTextureDirty | Notifies the dynamic atlas of the panel that the content of the provided texture has changed. If the dynamic atlas contains the texture, it will update it. |
