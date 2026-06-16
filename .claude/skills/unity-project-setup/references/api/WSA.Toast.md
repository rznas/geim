<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WSA.Toast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a toast notification in Windows Store Apps.

Application must be declared "Toast capable" in manifest for toast notifications to work.

### Properties

| Property | Description |
| --- | --- |
| activated | true if toast was activated by user. |
| arguments | Arguments to be passed for application when toast notification is activated. |
| dismissed | true if toast notification was dismissed (for any reason). |
| dismissedByUser | true if toast notification was explicitly dismissed by user. |

### Public Methods

| Method | Description |
| --- | --- |
| Hide | Hide displayed toast notification. |
| Show | Show toast notification. |

### Static Methods

| Method | Description |
| --- | --- |
| Create | Create toast notification. |
| GetTemplate | Get template XML for toast notification. |
