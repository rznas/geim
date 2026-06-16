<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityRole.SearchField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The accessibility node behaves like a search field.

**Platform-specific behavior**

- **Android**: This role does not affect the node's announcement but provides the screen reader with semantic information about the node.
- **iOS**: If this role is set on a node, the screen reader announces the node as a "search field".
- **macOS**: If this role is set on a node, the screen reader announces the node as a "search text field".
- **Windows**: If this role is set on a node, the screen reader announces the node as "edit". The resulting behavior of this role is identical to that of AccessibilityRole.TextField.

On Windows and macOS, subscribe to the AccessibilityNode.focusChanged event to select the search field represented by the node when the user navigates to it, so that it can receive keyboard input.
