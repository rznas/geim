<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/frame-debugger-window-event-hierarchy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Check or find a rendering event

The Event Hierarchy panel in the Frame Debugger window displays the sequence of rendering events that constitute the frame. The panel organizes the events into a hierarchy so you can see where each event originates from.

To view information about an event, select the event in the Event Hierarchy. When you select an event:

- The Frame Debugger displays information about the event in the event information panel.
- Unity processes events up to and including the selected event and displays the result in the Game view.
- If there is a single **GameObject** associated with the event, you can double click or CTRL + click the event to highlight the GameObject in the Hierarchy. If the event represents a batch that contains multiple GameObjects, Unity doesn’t highlight the GameObjects.

For more information, see Frame Debugger.

## Hierarchy search bar

The search bar at the top of the Event Hierarchy can filter events by name. Use it to quickly find specific events by name.
