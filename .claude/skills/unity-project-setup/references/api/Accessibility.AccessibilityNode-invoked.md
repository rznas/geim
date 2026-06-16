<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityNode-invoked.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**void** `true` if the action succeeds and `false` otherwise.

### Description

Event invoked when the user performs an "activate" action when focused on the accessibility node.

Subscribe to this event to inform the screen reader that the node can be activated and to respond appropriately when the user performs this action. For example, activating a button, toggling a checkbox, or opening a dropdown. 

 Your callback should activate the visual element represented by the node and perform any other appropriate tasks. For example, you might use this event to activate a control that requires a gesture which would be difficult for screen reader users to perform, or has a different meaning when the screen reader is on. 

 After performing any tasks, return an appropriate value to indicate success or failure. 

 On mobile platforms, the "activate" action always sends a tap gesture in the center of the node's AccessibilityNode.frame, making the use of this event optional. However, if the visual element that the node represents does not intersect the center of the node's frame (for example, the node's frame covers a toggle as well as its label), it does not receive the tap gesture. Subscribing to this event allows you to activate the element regardless of its position relative to the node's frame. **Note**: Subscribing to this event does not prevent the tap gesture from being sent, so make sure the node's frame does not overlap with other interactive elements. 

 On Android, subscribing to this event also prompts the screen reader to provide instructions on how to activate the node. 

 On Windows and macOS, this event is required for screen reader users to be able to activate the node. 

 **Note**: On Windows, this event is not triggered for nodes with the role AccessibilityRole.Image.
