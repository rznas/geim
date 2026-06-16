<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityState.Selected.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The visual element represented by the accessibility node is currently selected, such as a selected table row or a selected button in a segmented control.

**Platform-specific behavior** 
 
 For nodes with a role other than AccessibilityRole.Toggle:

- **Android**: If this role is set on a node, the screen reader announces the node as "selected".
- **iOS**: If this role is set on a node, the screen reader announces the node as "selected".
- **macOS**: If this role is set on a node, the screen reader announces the node as "selected".
- **Windows**: If this role is set on a node, the screen reader announces the node as "on".

For nodes with the role AccessibilityRole.Toggle, see that role's documentation. 
 
 **Notes**

- On macOS, this state is only supported for nodes with the role AccessibilityRole.Button, AccessibilityRole.Toggle or AccessibilityRole.Dropdown.
- On Windows, this state is only supported for nodes with the role AccessibilityRole.Button or AccessibilityRole.Toggle
