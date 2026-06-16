<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityRole.TextField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The accessibility node behaves like a text field.

**Platform-specific behavior**

- **Android**: If this role is set on a node, the screen reader announces the node as an "edit box".
- **iOS**: This role has no effect.
- **macOS**: If this role is set on a node, the screen reader announces the node as a "text".
- **Windows**: If this role is set on a node, the screen reader announces the node as "edit".

On Windows and macOS, subscribe to the AccessibilityNode.focusChanged event to select the text field represented by the node when the user navigates to it, so that it can receive keyboard input.
