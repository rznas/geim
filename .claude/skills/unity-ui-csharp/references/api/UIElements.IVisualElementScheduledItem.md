<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IVisualElementScheduledItem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a scheduled task created with a VisualElement's schedule interface.

### Properties

| Property | Description |
| --- | --- |
| element | Returns the VisualElement this object is associated with. |
| isActive | Will be true when this item is scheduled. Note that an item's callback will only be executed when it's VisualElement is attached to a panel. |

### Public Methods

| Method | Description |
| --- | --- |
| Every | Repeats this action after a specified time. |
| ExecuteLater | Cancels any previously scheduled execution of this item and re-schedules the item. |
| ForDuration | After specified duration, the item will be automatically unscheduled. |
| Pause | Removes this item from its VisualElement's scheduler. |
| Resume | If not already active, will schedule this item on its VisualElement's scheduler. |
| StartingIn | Adds a delay to the first invokation. |
| Until | Item will be unscheduled automatically when specified condition is met. |
