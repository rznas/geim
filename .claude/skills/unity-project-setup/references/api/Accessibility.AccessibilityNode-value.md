<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityNode-value.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The value of the visual element that the accessibility node represents.

The node's value can be used to provide dynamic feedback about the node's content or input, such as the text within a text field, the position of a slider, or the progress of a task. 

 Set this property only for nodes whose content cannot be fully conveyed by their label. For example, the label of a node that represents a slider might be "Volume", but its value is "50%", which indicates the current volume level. In this case, users need to know not just the slider's identity but also its current value. Conversely, for a node representing a Save button, the label alone provides all the necessary information, and setting a value would be redundant and confusing. 

 If the value is set, the screen reader announces it when the user focuses on the node, before or after reading the node's label (depending on the platform). 

 To ensure users receive accurate and up-to-date information, update this property whenever the state of the node changes. For example, update the value of a node representing a text field whenever the user enters new text. 

 **Notes**:

 On macOS, this property has **no** effect on nodes with the following roles:

- AccessibilityRole.Toggle
- AccessibilityRole.TabButton

On Windows, this property has effect only on nodes with the following roles:

- AccessibilityRole.Button
- AccessibilityRole.Image
- AccessibilityRole.SearchField
- AccessibilityRole.Slider
- AccessibilityRole.TextField
- AccessibilityRole.Dropdown
- AccessibilityRole.ScrollView

On Windows, nodes with the role AccessibilityRole.ScrollView must have a value containing a number between 0 and 100 to accurately communicate the scroll percentage to the screen reader. For scroll views that support both vertical and horizontal scrolling, the value must contain two numbers, with the vertical scroll percentage listed first. For example, a value of `50, 75` indicates that the scroll view represented by the node is scrolled 50% vertically and 75% horizontally.
