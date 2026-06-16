<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityRole.TabBar.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The accessibility node behaves like an ordered list of tabs.

Tab bar nodes are specialized container nodes. See AccessibilityRole.Container for platform-specific screen reader behavior that is common to both container and tab bar nodes. 
 
 **Platform behavior specific to this role**

- **Android**: This role does not affect the node's announcement but provides the screen reader with semantic information about the node.
- **iOS**: If this role is set on a node, the screen reader announces the node's children as "tabs". It also announces a tab's position in the tab bar and the total number of tabs in it.
- **macOS**: If this role is set on a node, the screen reader announces the node as a "tab group". If the node's children have AccessibilityRole.TabButton set, the screen reader also announces their position in the tab bar and the total number of tabs in it.
- **Windows**: If this role is set on a node, the screen reader announces the node as a "tab".

For proper functionality, tab bar nodes must have a AccessibilityNode.label set, and their child nodes must have AccessibilityRole.TabButton assigned. 
 
 Set AccessibilityState.Selected on the child node representing the selected tab to inform the screen reader of which tab is currently selected.
