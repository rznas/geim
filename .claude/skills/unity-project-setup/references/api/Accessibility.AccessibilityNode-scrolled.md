<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityNode-scrolled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**void** `true` if the action succeeds and `false` otherwise.

### Description

Event invoked when the user performs a "scroll" action when focused on the accessibility node.

Subscribe to this event to support scrolling in an application-specific way, such as a scroll by page action. This is not the same as standard scrolling, which is supported by default and does not trigger an accessibility event. 

 Your callback should scroll the content of the scroll view containing the visual element represented by the node by an appropriate amount based on the direction provided. For example, if the scrolling direction is AccessibilityScrollDirection.Forward, scroll the content up or to the left (depending on the scroll view's orientation) by one page. 

 If the scrolling succeeds for the specified direction, return `true` and call IAccessibilityNotificationDispatcher.SendPageScrolledAnnouncement to provide the user with information about the new content of the screen, and to update the screen reader focus accordingly. For example, to move it off an accessibility node that may have been scrolled out of the screen. 

 If the scrolling fails for the specified direction (which might happen, for example, if the scroll view's content is already at the top, and the user tries to scroll up), return `false`. 

 On Android, if the node has the role AccessibilityRole.Slider, then when the user performs a "scroll" action, the events AccessibilityNode.incremented or AccessibilityNode.decremented are triggered instead of this one. 

 **Platform support**: This event is not triggered on macOS.
