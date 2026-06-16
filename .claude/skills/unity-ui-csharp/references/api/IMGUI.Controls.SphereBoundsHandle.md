<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.SphereBoundsHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A compound handle to edit a sphere-shaped bounding volume in the Scene view.

A sphere volume is defined by only a radius parameter, and so dragging a handle will always scale the volume uniformly.
 
  *2D and 3D SphereBoundsHandle in the Scene View.*
 
 Additional resources: PrimitiveBoundsHandle.

### Properties

| Property | Description |
| --- | --- |
| radius | Returns or specifies the radius of the sphere bounding volume. |

### Constructors

| Constructor | Description |
| --- | --- |
| SphereBoundsHandle | Create a new instance of the SphereBoundsHandle class. |

### Protected Methods

| Method | Description |
| --- | --- |
| DrawWireframe | Draw a wireframe sphere for this instance. |
| OnHandleChanged | A callback for when a control handle was dragged in the Scene. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| axes | Flags specifying which axes should display control handles. |
| center | Returns or specifies the center of the bounding volume for the handle. |
| handleColor | Returns or specifies the color of the control handles. |
| midpointHandleDrawFunction | An optional CapFunction to use when displaying the control handles. Defaults to Handles.DotHandleCap if no value is specified. |
| midpointHandleSizeFunction | The SizeFunction to specify how large the midpoint control handles should be. |
| wireframeColor | Returns or specifies the color of the wireframe shape. |

### Public Methods

| Method | Description |
| --- | --- |
| DrawHandle | A function to display this instance in the current handle camera using its current configuration. |
| SetColor | Sets handleColor and wireframeColor to the same value. |

### Protected Methods

| Method | Description |
| --- | --- |
| GetSize | Gets the current size of the bounding volume for this instance. |
| IsAxisEnabled | Gets a value indicating whether the specified axis is enabled for the current instance. |
| SetSize | Sets the current size of the bounding volume for this instance. |

### Static Methods

| Method | Description |
| --- | --- |
| DefaultMidpointHandleSizeFunction | A SizeFunction that returns a fixed screen-space size. |
