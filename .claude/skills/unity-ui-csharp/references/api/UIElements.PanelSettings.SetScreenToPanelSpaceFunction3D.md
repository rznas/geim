<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PanelSettings.SetScreenToPanelSpaceFunction3D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| screenToPanelSpaceFunction | The translation function. Set to `null` to revert to the default behavior. |

### Description

Sets the function that handles the transformation from screen space to panel space. For overlay panels, this function returns the input value.

If the panel's targetTexture is applied to 3D objects, use a function that raycasts against MeshColliders in the Scene. The function can first check whether the GameObject that the ray hits has a MeshRenderer with a shader that uses this panel's target texture. It can then return the transformed `RaycastHit.textureCoord` in the texture's pixel space. Return a coordinate outside the panel to skip incoming pointer events if the ray doesn't hit a valid target or location.

 A non-zero z value should be returned when the element at the given screen coordinate contains 3-D transformations that make it overflow forward or backward out of the panel's surface. This z value is used by pointer events when converting between panel position and local position.
