<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityNode-dismissed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**void** `true` if the action succeeds and `false` otherwise.

### Description

Event invoked when the user performs a "dismiss" action when focused on the accessibility node.

Subscribe to this event if the visual element that the node represents can be revealed modally or in a hierarchy. For example, you might subscribe to this event if the node represents a dialog box to give users a deliberate dismiss action that closes it. 

 Your callback should dismiss the visual element represented by the node. After performing any tasks, return an appropriate value to indicate success or failure. 

 On Android, subscribing to this event enables the "dismiss" action and prompt screen reader to provide instructions on how to activate it. This action is available in the TalkBack local context menu and is different from the "back" system gesture, which activates the Back button of the device. 

 **Platform support**: This event is not triggered on Windows. To dismiss a view on Windows, bind your "dismiss" code to the **Escape** key.
