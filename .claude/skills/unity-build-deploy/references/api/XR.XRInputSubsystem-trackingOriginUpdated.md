<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRInputSubsystem-trackingOriginUpdated.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | Unity calls this delegate when the TrackingOriginFlags changes. |

### Description

An event that takes the delegate instance that the XRInputSubsystem calls when it changes the origin it reports devices at.

This can be due to a change in the TrackingOriginFlags or from the XRInputSubsystem moving the location of the origin without changing the type. See XRInputSubsystem.GetTrackingOrigin in order to see the new TrackingOriginFlags.
