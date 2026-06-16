<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.GetCounterValueAsFloat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| markerId | Marker identifier. |

### Returns

**float** Returns the counter value as *float*.

### Description

Gets the last value of a counter marker in the frame as a float data type'.

Use to retrieve the last data sample of a marker with MarkerFlags.Counter flag.

```csharp
using UnityEditor.Profiling;class Example
{
    static unsafe float ExtractMyCounterValue(FrameDataView frameData, string counterName)
    {
        var counterMarkerId = frameData.GetMarkerId(counterName);
        return frameData.GetCounterValueAsFloat(counterMarkerId);
    }
}
```

**Note:** 
 If no data was produced for the counter in the frame, the return value is 0.

Additional resources: HasCounterValue, GetCounterValuePtr.
