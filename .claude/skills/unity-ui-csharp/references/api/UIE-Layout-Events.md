<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-Layout-Events.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Layout events

`GeometryChangedEvent` is currently the only layout event.

The base class for `GeometryChangedEvent` is the EventBase class.

The following table describes the layout event and its propagation phases:

| **Event** | **Description** | **Trickles down** | **Bubbles up** | **Cancellable** |
| --- | --- | --- | --- | --- |
| GeometryChangedEvent | Sent when the position or the dimensions of an element changes. |  |  |  |

## Unique properties

**`oldRect`**: The former position and dimensions of the element.

**`newRect`**: The new position and dimensions of the element.

## GeometryChangedEvent

The `GeometryChangedEvent` is sent when either the position or the dimensions of an element changes. Events of this type are only sent to the event target.

It’s important to unregister from the `GeometryChangedEvent` event after you receive your callback, as additional layout changes will trigger the callback again.

**`target`**: The element with a new geometry.

## Additional resources

- Create an aspect ratio custom control
- Get resolved styles
