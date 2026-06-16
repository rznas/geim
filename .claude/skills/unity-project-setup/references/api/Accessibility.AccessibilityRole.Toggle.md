<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityRole.Toggle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The accessibility node behaves like a toggle.

**Platform-specific behavior**

- **Android**: If this role is set on a node, the screen reader announces the node as a "switch". After a short pause, it provides instructions on how to toggle it. If the node has AccessibilityState.Selected set, the screen reader reads "on" before announcing the node's label. Otherwise, it reads "off".
- **iOS**: If this role is set on a node, the screen reader announces the node as a "switch button". After a short pause, it provides instructions on how to toggle it. If the node has AccessibilityState.Selected set, the screen reader reads "selected" before announcing the node's label. Otherwise, it does not read the node's state.
- **macOS**: If this role is set on a node, the screen reader announces the node as a "checkbox". After a short pause, it provides instructions on how to toggle it. If the node has AccessibilityState.Selected set, the screen reader reads "checked" after announcing the node's label. Otherwise, it reads "unchecked".
- **Windows**: If this role is set on a node, the screen reader announces the node as a "checkbox". If the node has AccessibilityState.Selected set, the screen reader reads "checked" after announcing the node's label. Otherwise, it reads "unchecked".

Subscribe to the AccessibilityNode.invoked event to inform the screen reader that the node can be activated, and perform an appropriate action when the user activates it, such as changing the value of the toggle represented by the node. 
 
 **Platform support**: On iOS, this role is only supported starting with iOS 17.
