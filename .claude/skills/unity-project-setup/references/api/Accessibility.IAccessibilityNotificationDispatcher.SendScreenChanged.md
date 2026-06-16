<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.IAccessibilityNotificationDispatcher.SendScreenChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nodeToFocus | An optional node to be focused by the screen reader after processing the notification. If a node is not provided, the screen reader focuses on the first active node in the accessibility hierarchy. |

### Description

Notifies the screen reader that the screen changed considerably and optionally requests it to move its focus to a given accessibility node.

Call this method to notify the screen reader of major changes to the user interface. For example, when a view appears that occupies a major portion of the screen, or when an automatic refresh updates the entire content of the screen. 

 Calling this method prompts the screen reader to invalidate its cache of the accessibility hierarchy. 

 **Note**: On Windows and macOS, duplicate calls with the same argument are ignored by the screen reader.
