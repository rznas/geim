<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRStats.TryGetGPUTimeLastFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gpuTimeLastFrame | Outputs the time spent by the GPU last frame. |

### Returns

**bool** True if the GPU time spent last frame is available, false otherwise.

### Description

Retrieves the time spent by the GPU last frame, in seconds, as reported by the XR SDK.

On SDKs that support it, this method allows access to more accurate timing information from the SDK itself. This information can take into account GPU time spent in SDK-specific layers.

Statistics are not always available and can vary based on hardware, SDK, and even frame to frame. As such it is important to check the return value of this method before using the statistic value from the out parameter.
