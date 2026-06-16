<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GraphView.FreehandSelector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Freehand selection tool.

### Constructors

| Constructor | Description |
| --- | --- |
| FreehandSelector | FreehandSelector constructor. |

### Protected Methods

| Method | Description |
| --- | --- |
| RegisterCallbacksOnTarget | Register callbacks on target VisualElement. |
| UnregisterCallbacksFromTarget | Unregister callbacks on target VisualElement. |

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
