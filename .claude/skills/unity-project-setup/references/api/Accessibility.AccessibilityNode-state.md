<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityNode-state.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The status of the visual element that the accessibility node represents.

The node's state represents the current status or condition of the visual element represented by the node. It allows screen readers to provide users with dynamic feedback about the state of interactive elements, such as whether a checkbox is checked or whether a button is disabled. 

 If the state is set, the screen reader announces it when the user focuses on the node, before or after reading the node's label and value (depending on the platform). 

 To ensure users receive accurate and up-to-date information, update this property whenever the state of the node changes. For example, update the state of a node representing a checkbox whenever the user toggles it. 

 If the visual element that the node represents has a state that is not covered by any of the predefined AccessibilityStates, use the default value of this property, AccessibilityState.None, and provide information about the node's current state in properties such as the AccessibilityNode.value and AccessibilityNode.hint.
