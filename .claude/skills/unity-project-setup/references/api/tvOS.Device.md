<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/tvOS.Device.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface into tvOS specific functionality.

### Static Properties

| Property | Description |
| --- | --- |
| advertisingIdentifier | The device advertising ID (IDFA) for ad attribution and analytics. |
| advertisingTrackingEnabled | Is advertising tracking enabled. |
| generation | The generation of the device. (Read Only) |
| runsOnSimulator | Returns true if the process is a tvOS app running on a Simulator. |
| systemVersion | tvOS version. |
| vendorIdentifier | Vendor ID. |

### Static Methods

| Method | Description |
| --- | --- |
| ResetNoBackupFlag | Reset "no backup" file flag: file will be synced with iCloud/iTunes backup and can be deleted by OS in low storage situations. |
| SetNoBackupFlag | Set file flag to be excluded from iCloud/iTunes backup. |
