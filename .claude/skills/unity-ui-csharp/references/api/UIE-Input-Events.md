<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-Input-Events.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Input events

The `InputEvent` is sent when the user submits text into a text field. This event updates when there is a change in focus, such as a `PointerCaptureOutEvent` that on a touch screen.

For default keyboard inputs, the `inputEvent` fires for each keystroke. `InputEvent` doesn’t fire when the TextField populates from an indirect source, such as an automated script.

The following table describes the input event and its propagation phases:

| **Event** | **Description** | **Trickles down** | **Bubbles up** | **Cancellable** |
| --- | --- | --- | --- | --- |
| InputEvent | Sent when data is input to a **visual element**, typically a control. | **Yes** | **Yes** | **No** |

## Unique properties

**`previousData`**: The former data.

**`newData`**: The new data.

## Event list

### InputEvent

Event sent when data is input to visual elements that implement TextInputBaseField. This event differs from `ChangeEvent` in that it’s sent for every input event in the control, even if the value of the control hasn’t changed.

**`target`**: The element where the input occurred.
