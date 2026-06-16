<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRStats.TryGetDroppedFrameCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| droppedFrameCount | Outputs the number of frames dropped since the last update. |

### Returns

**bool** True if the dropped frame count is available, false otherwise.

### Description

Retrieves the number of dropped frames reported by the XR SDK.

The number of dropped frames can be useful to games or applications that wish to dynamically scale content or settings in order to maximize frame rate. It is important for XR applications to run at a consistent, high frame rate. If an application is drawing too much or making too many calculations, it may be unable to maintain a high frame rate and "drop" frames. When the SDK reports that frames are being dropped, the game or application can adjust settings, disable objects, or perform other actions to reduce overhead.

Statistics are not always available and can vary based on hardware, SDK, and even frame to frame. As such it is important to check the return value of this method before using the statistic value from the out parameter.
