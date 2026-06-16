<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.PrimitiveBoundsHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for a compound handle to edit a bounding volume in the Scene view.

This class allows you to display a shape with up to six control handles for simultaneously editing the size and center of a bounding volume. Dragging on any one control handle will expand the volume along the control handle's axis. All classes that inherit from this class also gain the following modifier keys while a control handle is being dragged:
 
 • **Alt**: Pin the center of the volume to its location at the time the control handle was clicked and grow the size in both directions along the control handle's axis of movement.
 • **Shift**: Uniformly scale the volume along all enabled axes in proportion to its size at the time the control handle was clicked.
 
 The handle rendered by this class's DrawHandle method is affected by global state in the Handles class, such as Handles.matrix and Handles.color.
 
 Additional resources: Editor.OnSceneGUI, Handles.SetCamera.

### Properties

| Property | Description |
| --- | --- |
| axes | Flags specifying which axes should display control handles. |
| center | Returns or specifies the center of the bounding volume for the handle. |
| handleColor | Returns or specifies the color of the control handles. |
| midpointHandleDrawFunction | An optional CapFunction to use when displaying the control handles. Defaults to Handles.DotHandleCap if no value is specified. |
| midpointHandleSizeFunction | The SizeFunction to specify how large the midpoint control handles should be. |
| wireframeColor | Returns or specifies the color of the wireframe shape. |

### Constructors

| Constructor | Description |
| --- | --- |
| PrimitiveBoundsHandle | Create a new instance of the PrimitiveBoundsHandle class. |

### Public Methods

| Method | Description |
| --- | --- |
| DrawHandle | A function to display this instance in the current handle camera using its current configuration. |
| SetColor | Sets handleColor and wireframeColor to the same value. |

### Protected Methods

| Method | Description |
| --- | --- |
| DrawWireframe | Draw a wireframe shape for this instance. Subclasses must implement this method. |
| GetSize | Gets the current size of the bounding volume for this instance. |
| IsAxisEnabled | Gets a value indicating whether the specified axis is enabled for the current instance. |
| OnHandleChanged | A callback for when a control handle was dragged in the Scene. |
| SetSize | Sets the current size of the bounding volume for this instance. |

### Static Methods

| Method | Description |
| --- | --- |
| DefaultMidpointHandleSizeFunction | A SizeFunction that returns a fixed screen-space size. |
