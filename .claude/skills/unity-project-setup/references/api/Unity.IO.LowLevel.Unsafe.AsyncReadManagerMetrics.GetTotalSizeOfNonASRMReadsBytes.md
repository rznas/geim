<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.GetTotalSizeOfNonASRMReadsBytes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| emptyAfterRead | Set to `true` to reset the underlying data counter to zero after calling this function. Set to `false` if you want each call to this function to return the running, cumulative total. |

### Returns

**ulong** Number of bytes of data read through systems other than the AsyncReadManager since you started metrics collection or you cleared this data counter by setting `emptyAfterRead` to `true`.

### Description

Returns the amount of data (in bytes) read through systems other than the AsyncReadManager.
