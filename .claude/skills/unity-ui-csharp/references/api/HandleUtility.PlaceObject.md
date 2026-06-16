<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.PlaceObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| guiPosition | The GUI position in the SceneView. You can pass Event.current.mousePosition to this parameter in most cases. |
| position | Returns the nearest intersected point to a ray cast from the mouse position into the scene. |
| normal | Returns the normal of the nearest intersected point to a ray cast from the mouse position into the scene. |

### Returns

**bool** Returns true if the raycast intersected something in the scene; otherwise, false.

### Description

Casts a ray against the loaded scenes and returns the nearest intersected point on a collider.

Use this method to match the behavior of drag and drop in the SceneView.

PlaceObject also queries any delegates registered to placeObjectCustomPasses when determining the nearest point.
