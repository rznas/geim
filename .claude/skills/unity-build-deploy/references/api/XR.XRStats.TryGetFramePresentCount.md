<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRStats.TryGetFramePresentCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| framePresentCount | Outputs the number of times the current frame has been presented. |

### Returns

**bool** True if the frame present count is available, false otherwise.

### Description

Retrieves the number of times the current frame has been drawn to the device as reported by the XR SDK.

If performance degrades, some SDKs may choose to draw the current frame multiple times with or without some kind of adaptation to compensate. The frame present count can tell if the SDK has presented the same frame to the viewer multiple times.

Statistics are not always available and can vary based on hardware, SDK, and even frame to frame. As such it is important to check the return value of this method before using the statistic value from the out parameter.
