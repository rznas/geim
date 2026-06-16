<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityNode-frame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The bounding rectangle of the accessibility node in screen coordinates.

The node's frame defines the position and size of the node in screen coordinates. It is essential to screen reader users, as it provides the coordinates where the screen reader draws its cursor when focused on the node. 

 If the visual element represented by the node is in world space, convert its world coordinates to screen coordinates in order to set the frame. 

 Update the node's frame whenever the position or size of the visual element it represents changes. For example, when the element is moved, resized, or animated, when the user scrolls the application's interface, or when the orientation of the screen changes. Ensure that the coordinates of the visual element are up-to-date before updating the frame by waiting until its layout is finalized. For example, at the end of the frame in which the layout change occurred. 

 The node's frame can be set either through this property or through the AccessibilityNode.frameGetter delegate. Using the delegate should simplify the update of the node's frame by automatically keeping it in sync with the coordinates of the visual element represented by the node. 

 If this property is not set, it gets its value from the AccessibilityNode.frameGetter. 

 **Notes**:

- If the node has AccessibilityNode.isActive set to `true`, and the frame is outside of the application window, the screen reader may still be able to focus on the node.
- If the frame's size is zero, the screen reader may skip the node and its children even if they have AccessibilityNode.isActive set to `true`.
- If the AccessibilityNode.frameGetter is not set, calling AccessibilityHierarchy.RefreshNodeFrames sets the value of this property to Rect.zero.
