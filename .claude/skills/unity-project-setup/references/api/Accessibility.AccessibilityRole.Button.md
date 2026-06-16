<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityRole.Button.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The accessibility node behaves like a button.

If this role is set on a node, the screen reader announces the node as a "button". On Android and macOS, after a short pause, it also provides instructions on how to activate the node. 
 
 Subscribe to the AccessibilityNode.invoked event to inform the screen reader that the node can be activated, and perform an appropriate action when the user activates it, such as invoking the button represented by the node.
