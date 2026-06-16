<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.FocusController.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class in charge of managing the focus inside a Panel.

Each Panel should have an instance of this class. The instance holds the currently focused VisualElement and is responsible for changing it. 

Additional resources: IPanel

### Properties

| Property | Description |
| --- | --- |
| focusedElement | The currently focused VisualElement. |

### Constructors

| Constructor | Description |
| --- | --- |
| FocusController | Constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| IgnoreEvent | Instructs the FocusController to ignore the given event. This will prevent the event from changing the current focused VisualElement or triggering focus events. |
