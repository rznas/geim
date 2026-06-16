<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.TryGetFramePresentCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| framePresentCount | Outputs the number of times the current frame has been presented. |

### Returns

**bool** Returns true if the current frame count is available. Returns false otherwise.

### Description

Retrieves the number of times the current frame has been drawn to the device as reported by the XR Plugin.

If performance degrades, some SDKs draw the current frame multiple times. You can use the frame present count to see if the SDK has presented the same frame to the viewer multiple times.

 Statistics are only available for SDKs that support this method, and they can vary based on hardware, the SDK, and the frame. You should always check the return value of this method before you use the statistic value from the out parameter.
