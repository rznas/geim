<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityRole.Dropdown.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The accessibility node behaves like a dropdown list.

**Platform-specific behavior**

- **Android**: If this role is set on a node, the screen reader announces the node as a "dropdown list". After a short pause, it provides instructions on how to open it.
- **iOS**: This role has no effect.
- **macOS**: If this role is set on a node, the screen reader announces the node as a "pop up button". After a short pause, it provides instructions on how to open it. If the node has AccessibilityState.Expanded set, the screen reader reads "expanded" after announcing the node's label. Otherwise, it reads "collapsed".
- **Windows**: If this role is set on a node, the screen reader announces the node as a "combo box". If the node has AccessibilityState.Expanded set, the screen reader reads "expanded" after announcing the node's label. Otherwise, it reads "collapsed".

Subscribe to the AccessibilityNode.invoked event to inform the screen reader that the node can be activated, and perform an appropriate action when the user activates it, such as opening the dropdown represented by the node. 
 
 For proper functionality, a dropdown's child nodes must have AccessibilityRole.Button or AccessibilityRole.Toggle assigned. 
 
 Set AccessibilityState.Selected on the child node representing the selected option to inform the screen reader of which option is currently selected.
