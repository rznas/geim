<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRInputSubsystem.TrySetTrackingOriginMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The new TrackingOriginModeFlags that you'd like to change to. |

### Returns

**bool** True if the method changes the origin. Returns false otherwise.

### Description

Attempts to set the TrackingOriginModeFlags of the subsystem.

See XRInputSubsystem.GetSupportedTrackingOriginModes in order to see what modes this individual XRInputSubsystem supports, and XRInputSubsystem.GetTrackingOriginMode to see the current mode.
