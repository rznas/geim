<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityHierarchy.RefreshNodeFrames.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Refreshes the AccessibilityNode.frame of all nodes in the accessibility hierarchy.

This is a convenience method that updates the AccessibilityNode.frame of all nodes in the accessibility hierarchy (based on AccessibilityNode.frameGetter) and notifies the screen reader of these updates by calling IAccessibilityNotificationDispatcher.SendLayoutChanged (with a `null` parameter). 

 Call this method when most or all of the nodes on the screen require a layout update. For example, when the user scrolls the application's interface, or when the orientation of the screen changes.
