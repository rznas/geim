<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.BoxBoundsHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A compound handle to edit a box-shaped bounding volume in the Scene view.

*2D and 3D BoxBoundsHandle in the Scene View.*
 
 Additional resources: PrimitiveBoundsHandle.

### Properties

| Property | Description |
| --- | --- |
| size | Returns or specifies the size of the bounding box. |

### Constructors

| Constructor | Description |
| --- | --- |
| BoxBoundsHandle | Create a new instance of the BoxBoundsHandle class. |

### Protected Methods

| Method | Description |
| --- | --- |
| DrawWireframe | Draw a wireframe box for this instance. |

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
| OnHandleChanged | A callback for when a control handle was dragged in the Scene. |
| SetSize | Sets the current size of the bounding volume for this instance. |

### Static Methods

| Method | Description |
| --- | --- |
| DefaultMidpointHandleSizeFunction | A SizeFunction that returns a fixed screen-space size. |
