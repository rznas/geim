<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.TryGetMotionToPhoton.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| motionToPhoton | Outputs the motion-to-photon value. |

### Returns

**bool** Returns true if the motion-to-photon value is available. Returns false otherwise.

### Description

Retrieves the motion-to-photon value as reported by the XR Plugin.

The motion-to-photon represents latency. This latency is the difference between the last predicted tracking information and the moment that the scan-line of the target frame lights up on the display. You can use this to determine application latency.

 Statistics are only available for SDKs that support this method, and they can vary based on hardware, the SDK, and the frame. You should always check the return value of this method before you use the statistic value from the out parameter.
