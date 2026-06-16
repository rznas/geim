<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityRole.TabButton.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The accessibility node behaves like an item in an ordered list of tabs.

**Platform-specific behavior**

- **Android**: If this role is set on a node, the screen reader announces the node as a "button". After a short pause, it provides instructions on how to activate the node.
- **iOS**: If this role is set on a node and the node's parent has AccessibilityRole.TabBar set, the screen reader announces the node as a "tab". Otherwise, it announces the node as a "button".
- **macOS**: If this role is set on a node, the screen reader announces the node as a "tab". After a short pause, it provides instructions on how to select the node. If the node's parent has AccessibilityRole.TabBar set, the screen reader also announces the tab's position in the tab bar and the total number of tabs in it.
- **Windows**: If this role is set on a node, the screen reader announces the node as a "tab item".

For proper functionality, the parent node of tab button nodes must have AccessibilityRole.TabBar assigned. 
 
 If the tab represented by the tab button node is selected, assign AccessibilityState.Selected to the node to inform the screen reader of which tab is currently selected. 
 
 Subscribe to the AccessibilityNode.invoked event to inform the screen reader that the node can be activated, and perform an appropriate action when the user activates it, such as selecting the tab represented by the node.
