<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityNode-decremented.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Event invoked when the user performs a "decrement" action when focused on the accessibility node.

Subscribe to this event if the node has the role AccessibilityRole.Slider. 

 Your callback should decrement the value of the visual element represented by the node as well as the node's AccessibilityNode.value by an appropriate amount. 

 On iOS and macOS, if your callback does not change the node's value (which might happen, for example, if the slider represented by the node is already at its minimum value), the screen reader indicates to the user that value adjustment cannot continue due to a border or boundary. 

 **Notes**

- On macOS, this event is only triggered for nodes with the role AccessibilityRole.Slider.
- On Windows, this event is only triggered for nodes with the role AccessibilityRole.Slider whose AccessibilityNode.value contains a number.
