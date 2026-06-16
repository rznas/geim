<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityState.Disabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The visual element represented by the accessibility node is currently disabled and does not respond to user interaction.

This state is purely informative. It indicates the status of the visual element that the node represents. Setting this state does not prevent the user from interacting with the node (for example, the AccessibilityNode.invoked event is still triggered if the user wants to activate the node). To prevent user interaction with the visual element represented by the node, make sure it is disabled and restrict its actions in your accessibility event handlers (for example, return `false` in your event handler for AccessibilityNode.invoked). 
 
 **Platform-specific behavior**

- **Android**: If this role is set on a node, the screen reader announces the node as "disabled".
- **iOS**: If this role is set on a node, the screen reader announces the node as "dimmed".
- **macOS**: If this role is set on a node, the screen reader announces the node as "dimmed".
- **Windows**: If this role is set on a node, the screen reader announces the node as "disabled".
