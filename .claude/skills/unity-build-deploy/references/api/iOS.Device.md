<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Device.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface into iOS specific functionality.

### Static Properties

| Property | Description |
| --- | --- |
| advertisingIdentifier | The device advertising ID (IDFA) for ad attribution and analytics. |
| advertisingTrackingEnabled | Is advertising tracking enabled. |
| deferSystemGesturesMode | Defer system gestures until the second swipe on specific edges. |
| generation | The generation of the device. (Read Only) |
| hideHomeButton | Specifies whether the home button should be hidden in the iOS build of this application. |
| iosAppOnMac | Indicates whether the process is an iOS app running on a Mac. |
| lowPowerModeEnabled | Indicates whether Low Power Mode is enabled on the device. |
| runsOnSimulator | Returns true if the process is an iOS app running on a Simulator. |
| systemVersion | The version of the operating system currently running on the device. |
| vendorIdentifier | Vendor ID. |
| wantsSoftwareDimming | Indicates whether the screen may be dimmed lower than the hardware is normally capable of by emulating it in software. |

### Static Methods

| Method | Description |
| --- | --- |
| RequestStoreReview | Request App Store rating and review from the user. |
| ResetNoBackupFlag | Set file flag to be included in iCloud/iTunes backup. |
| SetNoBackupFlag | Set file flag to be excluded from iCloud/iTunes backup. This uses NSURLIsExcludedFromBackupKey. Note that you should set this property each time you save a file. |
