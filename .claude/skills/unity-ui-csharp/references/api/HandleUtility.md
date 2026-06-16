<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Helper functions for Scene View style 3D GUI.

These are mainly mathematical functions that assist in converting between the 3D Scene space and the 2D GUI. The functions are used in the construction of the Unity Editor itself and so using them is a good way to make your own Handles GUIs consistent with Unity's.

### Static Properties

| Property | Description |
| --- | --- |
| acceleration | Get standard acceleration for dragging values (Read Only). |
| nearestControl | The controlID of the nearest Handle to the mouse cursor. |
| niceMouseDelta | Get nice mouse delta to use for dragging a float value (Read Only). |
| niceMouseDeltaZoom | Get nice mouse delta to use for zooming (Read Only). |

### Static Methods

| Method | Description |
| --- | --- |
| AddControl | Record a distance measurement from a handle. |
| AddDefaultControl | Add the ID for a default control. This will be picked if nothing else is. |
| CalcLineTranslation | Map a mouse drag onto a movement along a line in 3D space. |
| ClosestPointToArc | Get the point on an arc (in 3D space) which is closest to the current mouse position. |
| ClosestPointToDisc | Get the point on an disc (in 3D space) which is closest to the current mouse position. |
| ClosestPointToPolyLine | Get the point on a polyline (in 3D space) which is closest to the current mouse position. |
| DecodeSelectionId | Translates a Vector4 selectionId value retrieved from GPU into a single integer picking index. |
| DistancePointBezier | Calculate distance between a point and a Bezier curve. |
| DistancePointLine | Calculate distance between a point and a line. |
| DistancePointToLine | Distance from a point p in 2d to a line defined by two points a and b. |
| DistancePointToLineSegment | Distance from a point p in 2d to a line segment defined by two points a and b. |
| DistanceToArc | Returns the distance in pixels from the mouse pointer to a 3D section of a disc. |
| DistanceToCircle | Returns the distance in pixels from the mouse pointer to a camera facing circle. |
| DistanceToCone | Returns the distance in pixels from the mouse pointer to a cone. |
| DistanceToCube | Returns the distance in pixels from the mouse pointer to a cube. |
| DistanceToDisc | Returns the distance in pixels from the mouse pointer to a 3D disc. |
| DistanceToLine | Returns the distance in pixels from the mouse pointer to a line. |
| DistanceToPolyLine | Returns the distance in pixels from the mouse pointer to a polyline. |
| DistanceToRectangle | Returns the distance in pixels from the mouse pointer to a rectangle on screen. |
| EncodeSelectionId | Translates a single integer picking index into a Vector4 selectionId value. The Vector4 selectionId is used to render the picking render textures during picking rendering. |
| FindNearestVertex | Returns the nearest vertex to a guiPoint within a maximum radius of 50 pixels. |
| GetHandleSize | Get world space size of a manipulator handle at given position. |
| GetOverlappingObjects | Gets an ordered list of objects that would be picked under the give mouse position. |
| GetPickingIncludeExcludeEntityIdList | Gets the picking PickingIncludeExcludeEntityIdList for the currently executing BatchRendererGroup.OnPerformCulling callback. |
| GetSelectionOutlineIncludeExcludeEntityIdList | Gets the selection outline PickingIncludeExcludeEntityIdList for the currently executing BatchRendererGroup.OnPerformCulling callback. |
| GUIPointToScreenPixelCoordinate | Converts a 2D GUI position to screen pixel coordinates. |
| GUIPointToWorldRay | Convert 2D GUI position to a world space ray. |
| PickAllObjects | Creates a list of all GameObjects under the specified position in screen coordinates. |
| PickGameObject | Pick game object closest to specified position. |
| PickRectObjects | Pick GameObjects that lie within a specified screen rectangle. |
| PlaceObject | Casts a ray against the loaded scenes and returns the nearest intersected point on a collider. |
| PointOnLineParameter | Returns the parameter for the projection of the point on the given line. |
| PopCamera | Retrieve all camera settings. |
| ProjectPointLine | Project point onto a line. |
| PushCamera | Store all camera settings. |
| RaySnap | Casts ray against the Scene and reports whether an object lies in its path. |
| RegisterRenderPickingCallback | Registers a callback to invoke when Unity renders for picking. |
| Repaint | Repaint the current view. |
| UnregisterRenderPickingCallback | Unregisters the callback that was previously registered for custom picking rendering.The method throws InvalidOperationException if you try to call it inside render picking callbacks. |
| WorldPointToSizedRect | Calculate a rectangle to display a 2D GUI element near a projected point in 3D space. |
| WorldToGUIPoint | Convert a world space point to a 2D GUI position.. |
| WorldToGUIPointWithDepth | Convert a world space point to a 2D GUI position. |

### Events

| Event | Description |
| --- | --- |
| getAuthoringObjectForEntity | The user-defined callback that Unity uses to retrieve the Unity Object associated with a DOTS Entity. |
| getEntitiesForAuthoringObject | The user-defined callback that Unity uses to retrieve the DOTS Entity IDs associated with a Unity Object. |
| getEntityIdsForAuthoringObject | The user-defined callback that Unity uses to retrieve the DOTS Entity IDs associated with a Unity Object. |
| pickGameObjectCustomPasses | Subscribe to this event to add additional picking objects to the HandleUtility.PickGameObject method. |
| placeObjectCustomPasses | Subscribe to this event to handle object placement in the SceneView. |

### Delegates

| Delegate | Description |
| --- | --- |
| PickGameObjectCallback | This is the method definition for pickGameObjectCustomPasses. |
| PlaceObjectDelegate | This is the method definition for placeObjectCustomPasses. |
| RenderPickingCallback | The delegate type to use with RegisterRenderPickingCallback and UnregisterRenderPickingCallback. |
| ResolvePickingCallback | The delegate type to return from RenderPickingCallback through the RenderPickingResult.resolver member. |
| ResolvePickingWithWorldPositionCallback | The delegate type to return from RenderPickingCallback through the RenderPickingResult.resolverWithWorldPos member, with the additional world space position and depth information of where the click occurred. |
