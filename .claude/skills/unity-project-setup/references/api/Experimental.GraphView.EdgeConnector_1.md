<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GraphView.EdgeConnector_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Manipulator for creating new edges.

### Properties

| Property | Description |
| --- | --- |
| edgeDragHelper | Reference to the edge drag helper. |

### Constructors

| Constructor | Description |
| --- | --- |
| EdgeConnector_1 | EdgeConnector's constructor. |

### Protected Methods

| Method | Description |
| --- | --- |
| Abort | Called when an edge creation is cancelled. |
| OnMouseDown | Called on mouse down event. |
| OnMouseMove | Called on mouse move event. |
| OnMouseUp | Called on mouse up event. |
| OnPointerDown | Called when a pointer down event occurs on the target element. |
| OnPointerMove | Called when a pointer move event occurs on the target element. |
| OnPointerUp | Called when a pointer up event occurs on the target element. |
| RegisterCallbacksOnTarget | Called to register click event callbacks on the target element. |
| UnregisterCallbacksFromTarget | Called to unregister event callbacks from the target element. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| edgeDragHelper | Reference to the edge drag helper. |
| target | VisualElement being manipulated. |
| activators | List of Activationfilters. |

### Protected Methods

| Method | Description |
| --- | --- |
| CanStartManipulation | Checks whether MouseEvent satisfies all of the ManipulatorActivationFilter requirements. |
| CanStopManipulation | Checks whether the MouseEvent is related to this Manipulator. |
| CanStartManipulation | Checks whether PointerEvent satisfies all of the ManipulatorActivationFilter requirements. |
| CanStopManipulation | Checks whether the PointerEvent is related to this Manipulator. |
