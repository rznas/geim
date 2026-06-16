<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.ContextualMenuManipulator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Manipulator that displays a contextual menu when the user clicks the right mouse button or presses the menu key on the keyboard.

### Constructors

| Constructor | Description |
| --- | --- |
| ContextualMenuManipulator | Constructor. |

### Protected Methods

| Method | Description |
| --- | --- |
| IsOSXContextualMenuPlatform | Check whether the handling of contextual menu events needs to be adapted for OSX. |
| RegisterCallbacksOnTarget | Register the event callbacks on the manipulator target. |
| UnregisterCallbacksFromTarget | Unregister the event callbacks from the manipulator target. |

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
