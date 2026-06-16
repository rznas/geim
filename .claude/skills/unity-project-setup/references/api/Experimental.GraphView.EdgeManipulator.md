<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GraphView.EdgeManipulator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Edge manipulator used to drag edges off ports and reconnect them elsewhere.

### Constructors

| Constructor | Description |
| --- | --- |
| EdgeManipulator | EdgeManipulator's constructor. |

### Protected Methods

| Method | Description |
| --- | --- |
| OnKeyDown | Handle key down event. |
| OnMouseDown | Handle mouse down event. |
| OnMouseMove | Handle mouse move event. |
| OnMouseUp | Handle mouse up event. |
| OnPointerDown | Called when a pointer down event occurs. |
| OnPointerMove | Called when a pointer move event occurs. |
| OnPointerUp | Called when a pointer up event occurs. |
| RegisterCallbacksOnTarget | Called to register click event callbacks on the target element. |
| UnregisterCallbacksFromTarget | Called to unregister event callbacks from the target element. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| target | VisualElement being manipulated. |
| activators | List of Activationfilters. |

### Protected Methods

| Method | Description |
| --- | --- |
| CanStartManipulation | Checks whether MouseEvent satisfies all of the ManipulatorActivationFilter requirements. |
| CanStopManipulation | Checks whether the MouseEvent is related to this Manipulator. |
| CanStartManipulation | Checks whether PointerEvent satisfies all of the ManipulatorActivationFilter requirements. |
| CanStopManipulation | Checks whether the PointerEvent is related to this Manipulator. |
