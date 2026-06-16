<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WSA.Toast.Create.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| xml | XML document with tile data. |
| image | Uri to image to show on a toast, can be empty, in that case text-only notification will be shown. |
| text | A text to display on a toast notification. |

### Returns

**Toast** A toast object for further work with created notification or null, if creation of toast failed.

### Description

Create toast notification.

Toast notification is created by providing XML document with it's data. A second variant is a convenience method to show simple toast with text, optionally with image on it.
