<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PointerManipulator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

PointerManipulators have a list of activation filters.

### Protected Methods

| Method | Description |
| --- | --- |
| CanStartManipulation | Checks whether PointerEvent satisfies all of the ManipulatorActivationFilter requirements. |
| CanStopManipulation | Checks whether the PointerEvent is related to this Manipulator. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| target | VisualElement being manipulated. |
| activators | List of Activationfilters. |

### Protected Methods

| Method | Description |
| --- | --- |
| RegisterCallbacksOnTarget | Called to register event callbacks on the target element. |
| UnregisterCallbacksFromTarget | Called to unregister event callbacks from the target element. |
| CanStartManipulation | Checks whether MouseEvent satisfies all of the ManipulatorActivationFilter requirements. |
| CanStopManipulation | Checks whether the MouseEvent is related to this Manipulator. |
