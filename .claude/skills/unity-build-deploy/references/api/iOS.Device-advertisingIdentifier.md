<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Device-advertisingIdentifier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The device advertising ID (IDFA) for ad attribution and analytics.

A UUID that identifies the device for advertising. This is the same as Apple's `ASIdentifierManager.advertisingIdentifier`. Use of this property may require extra App Store steps for advertising and privacy. If the user has limited ad tracking (use Device.advertisingTrackingEnabled to check), the ID may be zeroed or restricted. You must not use the ID for cross-app tracking when it is zeroed or restricted.

For an async option that also returns tracking status, use Application.RequestAdvertisingIdentifierAsync.
