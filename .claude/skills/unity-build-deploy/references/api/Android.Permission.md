<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.Permission.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Structure describing a permission that requires user authorization.

### Static Properties

| Property | Description |
| --- | --- |
| Camera | Used when requesting permission or checking if permission has been granted to use the camera. |
| CoarseLocation | Used when requesting permission or checking if permission has been granted to use the users location with coarse granularity. |
| ExternalStorageRead | Used when requesting permission or checking if permission has been granted to read from external storage such as a SD card. |
| ExternalStorageWrite | Used when requesting permission or checking if permission has been granted to write to external storage such as a SD card. |
| FineLocation | Used when requesting permission or checking if permission has been granted to use the users location with high precision. |
| Microphone | Used when requesting permission or checking if permission has been granted to use the microphone. |

### Static Methods

| Method | Description |
| --- | --- |
| HasUserAuthorizedPermission | Check if the user has granted access to a device resource or information that requires authorization. |
| RequestUserPermission | Request the user to grant access to a device resource or information that requires authorization. |
| RequestUserPermissions | Request the user to grant access to multiple device resources or information that requires authorization. |
| ShouldShowRequestPermissionRationale | Check whether to display the UI explaining the reason for permission before requesting it. |
