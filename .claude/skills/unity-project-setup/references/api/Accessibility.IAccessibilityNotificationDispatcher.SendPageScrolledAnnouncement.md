<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.IAccessibilityNotificationDispatcher.SendPageScrolledAnnouncement.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| announcement | Text that describes the new scroll position. For example, `"Tab 3 of 5"` or `"Page 19 of 27"`. This text is read by the screen reader after processing the notification. |
| nodeToFocus | An optional node to be focused by the screen reader after processing the notification. |

### Description

Notifies the screen reader that a scrolling action completed and optionally requests it to move its focus to a given accessibility node.

Call this method after responding to the AccessibilityNode.scrolled event to provide the user with information about the contents of the screen after they performed a scroll gesture, and to update the screen reader focus accordingly. For example, to move it off an accessibility node that may have been scrolled out of the screen. 

 On iOS, if this method is repeatedly called with the same text, the screen reader indicates to the user that scrolling cannot continue due to a border or boundary.
