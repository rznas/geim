<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityNode-hint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Additional guidance or context for interacting with the accessibility node.

The node's hint supplements the other node attributes by offering concise instructions or clarifications to screen reader users, especially when they are not immediately obvious. For example, input requirements, instructions for interacting with custom controls, or the results of performing an action on the node. 

 Set this property only when additional context or instructions are needed beyond what the label and other node attributes provide. For example, a node representing a Save button with the label "Save" does not need a hint like "Double-tap to save your changes". However, a node representing a Username text field might include a hint like "Use only letters and numbers." 

 Some accessibility roles or events provide built-in hints. For example, when focusing on a node with the role AccessibilityRole.Toggle, the screen reader may automatically say "Double-tap to toggle." after announcing the node. In such cases, setting this property is unnecessary. 

 When the user focuses on the node, the screen reader first announces the node's label and any other set node attributes. If the hint is set, the screen reader says it last. On some platforms, the hint functions as a tooltip, so the screen reader says it when the user pauses over the node. 

 To ensure proper screen reader intonation, begin the hint with a verb, capitalize the first letter, and end the hint with a period. 

 **Note**: On Windows, this property has no effect on nodes with the following roles:

- AccessibilityRole.StaticText
- AccessibilityRole.Header

**Platform support**: On Android, this property is only supported starting with Android 8.0 (API level 26).
