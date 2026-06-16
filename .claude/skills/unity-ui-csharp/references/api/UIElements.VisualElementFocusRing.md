<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElementFocusRing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Implementation of a linear focus ring. Elements are sorted according to their focusIndex.

### Properties

| Property | Description |
| --- | --- |
| defaultFocusOrder | The focus order for elements having 0 has a focusIndex. |

### Constructors

| Constructor | Description |
| --- | --- |
| VisualElementFocusRing | Constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| GetFocusChangeDirection | Get the direction of the focus change for the given event. For example, when the Tab key is pressed, focus should be given to the element to the right in the focus ring. |
| GetNextFocusable | Get the next element in the given direction. |
