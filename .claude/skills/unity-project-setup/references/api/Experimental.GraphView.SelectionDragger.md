<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GraphView.SelectionDragger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Selection dragger manipulator.

### Constructors

| Constructor | Description |
| --- | --- |
| SelectionDragger | SelectionDragger's constructor. |

### Protected Methods

| Method | Description |
| --- | --- |
| OnMouseDown | Called on mouse down event. |
| OnMouseMove | Called on mouse move event. |
| OnMouseUp | Called on mouse up event. |
| RegisterCallbacksOnTarget | Called to register click event callbacks on the target element. |
| UnregisterCallbacksFromTarget | Called to unregister event callbacks from the target element. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| clampToParentEdges | If true, it does not allow the dragged element to exit the parent's edges. |
| panSpeed | When elements are dragged near the edges of the Graph, panning occurs. This controls the speed for said panning. |
| target | VisualElement being manipulated. |
| activators | List of Activationfilters. |

### Protected Methods

| Method | Description |
| --- | --- |
| CalculatePosition | Calculate new position of the dragged element. |
| CanStartManipulation | Checks whether MouseEvent satisfies all of the ManipulatorActivationFilter requirements. |
| CanStopManipulation | Checks whether the MouseEvent is related to this Manipulator. |
