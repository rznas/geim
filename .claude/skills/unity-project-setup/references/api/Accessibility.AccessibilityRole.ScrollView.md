<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityRole.ScrollView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The accessibility node behaves like a scrollable container.

Scroll view nodes are specialized container nodes. Refer to AccessibilityRole.Container for platform-specific screen reader behavior that is common to both container and scroll view nodes. 
 
 **Platform behavior specific to this role**

- **Android**: This role does not affect the node's announcement but provides the screen reader with semantic information about the node.
- **iOS**: This role does not have any additional effect compared to AccessibilityRole.Container.
- **macOS**: If this role is set on a node, the screen reader announces the node as a "scroll area".
- **Windows**: This role enables screen reader scrolling [gestures on Windows touch-screen devices](https://support.microsoft.com/en-us/windows/chapter-6-using-narrator-with-touch-60f8f38b-23fa-ebe2-4345-c900d1b2e22f ). It does not affect the node's announcement.

For proper functionality, a scroll view's active child nodes must be subscribed to the AccessibilityNode.scrolled event.
