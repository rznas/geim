<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityNode-label.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A short description of the accessibility node.

The node's label should provide a concise, human-readable description of the visual element represented by the node. 

 The label is essential to screen reader users because it provides the text that the screen reader announces when a user focuses on the node to communicate the purpose or content of the visual element that the node represents. 

 Generally, all accessibility nodes should have an appropriate label. Nodes with an empty label can cause unwanted screen reader behavior. 

 A good label is short, informative, and does not include the node's type. For example, the label for a Save button should be "Save", not "Save button". To ensure proper screen reader intonation, start the label with a capital letter and avoid ending it with a period. 

 The label works in tandem with other node properties to provide a comprehensive experience to the user. While the label provides the main identifier of the accessibility node, additional information can be supplied through properties such as the AccessibilityNode.value, AccessibilityNode.hint, AccessibilityNode.role and AccessibilityNode.state.
