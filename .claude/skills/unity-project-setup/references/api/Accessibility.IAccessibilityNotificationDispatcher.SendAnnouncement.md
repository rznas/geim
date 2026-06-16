<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.IAccessibilityNotificationDispatcher.SendAnnouncement.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| announcement | The announcement text that the screen reader should read. |

### Description

Requests the screen reader to convey an announcement.

Call this method to provide the user with information about events that do not update the application's user interface, that update it only briefly, or that are not directly related to the user's current focus. For example, to announce the completion of a background process, such as a file download. 

 The announcement is interrupted if the user focuses on another accessibility node before the screen reader finishes reading it. 

 **Note**: On iOS, this method has no effect if called from a button's callback.
