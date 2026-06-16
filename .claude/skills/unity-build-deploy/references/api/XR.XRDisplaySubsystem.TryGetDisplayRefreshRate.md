<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.TryGetDisplayRefreshRate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| hmdRefreshRate | Outputs the display refresh rate in Hz. |

### Returns

**bool** Returns true if the display refresh rate is available. Returns false if that rate is unavailable.

### Description

Retrieves the refresh rate of the display as reported by the XR Plugin.

The XR plugin uses the display refresh rate as the target frame rate. This can be useful information for synchronizing fixed updates.

 Statistics are only available for SDKs that support this method, and they can vary based on hardware, the SDK, and the frame. You should always check the return value of this method before you use the statistic value from the out parameter.
