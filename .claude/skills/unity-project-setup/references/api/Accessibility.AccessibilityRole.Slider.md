<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityRole.Slider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The accessibility node behaves like a slider that allows continuous adjustment through a range of values.

**Platform-specific behavior**

- **Android**: If this role is set on a node, the screen reader announces the node as a "slider". After a short pause, it provides instructions on how to adjust its value.
- **iOS**: If this role is set on a node, the screen reader announces the node as "adjustable". After a short pause, it provides instructions on how to adjust its value.
- **macOS**: If this role is set on a node, the screen reader announces the node as a "slider". After a short pause, it provides instructions on how to interact with it.
- **Windows**: If this role is set on a node, the screen reader announces the node as a "slider".

Subscribe to the AccessibilityNode.incremented and AccessibilityNode.decremented events to perform an appropriate action when the user increases or decreases the node's value, such as changing the value of the slider represented by the node. On Windows, these events are only triggered for nodes whose AccessibilityNode.value contains a number. 
 On Windows, subscribe to the AccessibilityNode.focusChanged event to select the slider represented by the node when the user navigates to it, so that it can receive keyboard input.
