<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.TryGetAppGPUTimeLastFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gpuTimeLastFrame | Outputs the time spent by the GPU during the last frame. |

### Returns

**bool** Returns true if the GPU time spent on the last frame is available. Returns false if that time is unavailable.

### Description

Retrieves the time the GPU has spent on executing commands from the application's last frame, as reported by the XR Plugin. Measured in seconds.

You can use this method to get more accurate timing information from the SDK, including information about GPU time spent in SDK-specific layers.

 Statistics are only available for SDKs that support this method, and they can vary based on hardware, the SDK, and the frame. You should always check the return value of this method before you use the statistic value from the out parameter.
