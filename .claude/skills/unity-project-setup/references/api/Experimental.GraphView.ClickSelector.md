<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GraphView.ClickSelector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Selects element on single click.

### Constructors

| Constructor | Description |
| --- | --- |
| ClickSelector | Constructor for ClickSelector. |

### Protected Methods

| Method | Description |
| --- | --- |
| OnMouseDown | Called on mouse down event. |
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
