<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/NVIDIA.DLSSCommandExecutionData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the state of a DLSSContext. If you call Device.ExecuteDLSS, Unity sends the values in this struct to the runtime. After this, you can change the values in this struct without any side effects.

### Properties

| Property | Description |
| --- | --- |
| invertXAxis | Indicates if the X axis is inverted. Set to 0 or 1. |
| invertYAxis | Indicates if the Y axis is inverted. Set to 0 or 1. |
| jitterOffsetX | The x-axis jitter camera offset in device coordinates. |
| jitterOffsetY | The y-axis jitter camera offset in device coordinates. |
| mvScaleX | If you set the DLSSFeatureFlags.MVLowRes flag, this value indicates the scale (smaller) of the motion vector buffer input texture used in the x-axis. |
| mvScaleY | If you set the DLSSFeatureFlags.MVLowRes flag, this value indicates the scale (smaller) of the motion vector buffer input texture used in the y-axis. |
| preExposure | Specifies a pre exposure multiplier for the input color texture. |
| reset | Indicates whether to invalidate the history buffers. |
| sharpness | Specifies how sharp the frame should look as a value from 0 to 1. |
| subrectHeight | The subrectangle height of input buffers to use. |
| subrectOffsetX | The subrectangle x-axis offset of input buffers to use. |
| subrectOffsetY | The subrectangle y-axis offset of input buffers to use. |
| subrectWidth | The subrectangle width of input buffers to use. |
