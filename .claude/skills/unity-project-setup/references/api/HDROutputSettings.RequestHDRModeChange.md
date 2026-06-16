<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HDROutputSettings.RequestHDRModeChange.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| enabled | Indicates whether HDR should be enabled. |

### Description

Use this function to request a change in the HDR Output Mode and in the value of HDROutputSettings.active.

When calling this function, Unity automatically sets the HDROutputSettings.HDRModeChangeRequested property to `true` until the HDR Output Mode change completes.

This functionality could be used to implement an in application menu allowing users to swap in or our of HDR display mode.

Some platforms cannot swap in or out of HDR display mode at runtime. See SystemInfo.hdrDisplaySupportFlags for more information.

Accessing this member results in an exception if HDR is not available on the display. Use HDROutputSettings.available for the display to check that HDR is available.
