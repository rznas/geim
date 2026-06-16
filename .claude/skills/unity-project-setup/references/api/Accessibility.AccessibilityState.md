<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for defining the state of an AccessibilityNode to screen readers.

You can use the values in this enumeration to set the AccessibilityNode.state. This property enables screen readers to describe the state of interactive elements, such as whether a checkbox is checked or whether a button is disabled. 

 If the visual element that the node represents has a state that is not represented by an enumeration option, use the default value, AccessibilityState.None, and provide information about the node's current state in properties such as the AccessibilityNode.value and AccessibilityNode.hint. 

 Additional resources:

- Accessibility for mobile applications
- [Sample project using the accessibility APIs](https://github.com/Unity-Technologies/a11y-public-sample )

### Properties

| Property | Description |
| --- | --- |
| None | The accessibility node is not in a predefined state. |
| Disabled | The visual element represented by the accessibility node is currently disabled and does not respond to user interaction. |
| Selected | The visual element represented by the accessibility node is currently selected, such as a selected table row or a selected button in a segmented control. |
| Expanded | The visual element represented by the accessibility node is currently expanded, such as an expanded dropdown list or menu. |
