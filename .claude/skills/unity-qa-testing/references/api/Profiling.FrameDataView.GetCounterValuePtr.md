<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.GetCounterValuePtr.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| markerId | Marker identifier. |

### Returns

**void*** Returns unsafe pointer to the counter value.

### Description

Gets unsafe pointer to the last value of a counter marker in the frame.

Use to retrieve a pointer to the last data sample of a marker with MarkerFlags.Counter flag.

```csharp
using UnityEditor.Profiling;class Example
{
    static unsafe bool TryExtractMyCounterValue(FrameDataView frameData, string counterName, out int counterValue)
    {
        var counterMarkerId = frameData.GetMarkerId(counterName);
        void* valuePtr = frameData.GetCounterValuePtr(counterMarkerId);
        if (valuePtr == null)
        {
            counterValue = 0;
            return false;
        }        counterValue = *(int*)valuePtr;
        return true;
    }
}
```

**Note:** 
 If no data was produced for the counter in the frame, the return value is null.
