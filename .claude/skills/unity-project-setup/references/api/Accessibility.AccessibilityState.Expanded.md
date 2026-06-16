<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityState.Expanded.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The visual element represented by the accessibility node is currently expanded, such as an expanded dropdown list or menu.

If this role is set on a node with the role AccessibilityRole.Dropdown, the screen reader announces the node as "expanded". Otherwise, it announces the node as "collapsed". 
 
 **Notes**

- This state is only supported for nodes with the role AccessibilityRole.Dropdown.
- On macOS, if the role AccessibilityRole.Dropdown is unset from a node, the screen reader continues to announce the expanded/collapsed state of the node if its new role is compatible with this state. This is a platform limitation.

**Platform support**: This state has no effect on mobile platforms.
