<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-capture-the-pointer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Capture the pointer with a manipulator

When you handle pointer input, you might want the control to capture a pointer. When a **visual element** captures a pointer, Unity sends all the events associated with the pointer to the visual element regardless of whether the pointer hovers over the visual element. For example, if you create a control that receives drag events and captures the pointer, the control still receives drag events regardless of the pointer location.

The `Manipulator` class provides a convenient way to capture the pointer. The `Manipulator` class is a base class for all manipulators. A manipulator is a class that handles pointer input and sends events to a visual element. For example, the `Clickable` class is a manipulator that sends a `PointerDownEvent` when the user clicks on a visual element. After a `PointerDownEvent`, some elements must capture the pointer position to ensure it receives all subsequent pointer events, even when the cursor is no longer hovering over the element. For example, when you click on a button, slider, or scroll bar.

To capture the pointer, call `PointerCaptureHelper.CapturePointer`.

To release the pointer, call `PointerCaptureHelper.ReleasePointer`. If another element is already capturing the pointer when you call `CapturePointer()`, the element receives a `PointerCaptureOutEvent` event and loses the capture.

Only one element in the application can have the capture at any moment. While an element has the capture, it’s the target of all subsequent pointer events except mouse wheel events. This only applies to pointer events that don’t already have a set target and rely on the dispatch process to determine the target.

For more information, see the Capture events.

## Additional resources

- Capture events
- Create a drag-and-drop UI inside a custom Editor window
- Manipulators
- Events reference
