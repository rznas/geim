<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityRole.StaticText.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The accessibility node behaves like static text that can't change.

On macOS, if this role is set on a node that has a AccessibilityNode.label assigned, the screen reader announces the node as a "text". On other platforms, this role does not affect the node's announcement but provides the screen reader with semantic information about the node. 
 
 On Windows and macOS, if this role is set on a node without a label, the screen reader ignores the node.
