<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.IAccessibilityNotificationDispatcher.SendLayoutChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nodeToFocus | An optional node to be focused by the screen reader after processing the notification. If a node is not provided and the currently focused node still exists, the screen reader does not change its focus. |

### Description

Notifies the screen reader that the layout of the screen changed and optionally requests it to move its focus to a given accessibility node.

Call this method to notify the screen reader of minor adjustments to the user interface (for example, when a dropdown is opened or closed), or to update the screen reader focus as a result of such changes (for example, to move it off an accessibility node that may have been removed or deactivated so that the screen reader's focus indicator isn't stuck on a stale node). 

 Calling this method prompts the screen reader to invalidate its cache of the accessibility hierarchy. 

 **Note**: On Windows and macOS, duplicate calls with the same argument are ignored by the screen reader.
