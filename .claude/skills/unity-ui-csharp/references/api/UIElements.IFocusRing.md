<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IFocusRing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for classes implementing focus rings.

When the EventDispatcher processes navigation and pointer events, it automatically uses this interface to generate corresponding Focus events if applicable. 

 Each Panel's FocusController has a focus ring implementation automatically assigned to it. The type of that focus ring depends on the associated Panel's ContextType.

 For Editor-type Panels, only NavigationMoveEvent events in the following directions are considered:

- NavigationMoveEvent.Direction.Next,
- NavigationMoveEvent.Direction.Previous.

For Player-type Panels, the following directions are also considered:

- NavigationMoveEvent.Direction.Left,
- NavigationMoveEvent.Direction.Right,
- NavigationMoveEvent.Direction.Up,
- NavigationMoveEvent.Direction.Down.

See also How can I change what element is focused next for an example of a workaround solution if the assigned focus ring navigation rules don't correspond to your needs. 

Additional resources: FocusController

### Public Methods

| Method | Description |
| --- | --- |
| GetFocusChangeDirection | Get the direction of the focus change for the given event. |
| GetNextFocusable | Get the next element in the given direction. |
