<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.IAccessibilityNotificationDispatcher.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sends accessibility notifications to the screen reader.

This interface is implemented by AssistiveSupport.notificationDispatcher. Use it to send notifications to the screen reader about important events that occur in your application. 

 **Note**: Sending the same notification type multiple times in quick succession might result in the screen reader skipping some of the notifications.

### Public Methods

| Method | Description |
| --- | --- |
| SendAnnouncement | Requests the screen reader to convey an announcement. |
| SendLayoutChanged | Notifies the screen reader that the layout of the screen changed and optionally requests it to move its focus to a given accessibility node. |
| SendPageScrolledAnnouncement | Notifies the screen reader that a scrolling action completed and optionally requests it to move its focus to a given accessibility node. |
| SendScreenChanged | Notifies the screen reader that the screen changed considerably and optionally requests it to move its focus to a given accessibility node. |
