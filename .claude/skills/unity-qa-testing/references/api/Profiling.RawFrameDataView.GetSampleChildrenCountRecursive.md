<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.RawFrameDataView.GetSampleChildrenCountRecursive.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sampleIndex | Index of the Profiler sample. |

### Returns

**int** Returns amount of direct and indirect child samples.

### Description

Gets amount of direct and indirect child samples for the specific sample.

Use to quickly advance to the next sibling sample.

```csharp
using UnityEditor.Profiling;public class Example
{
    public static int SkipAllChildren(RawFrameDataView frameData, int sampleIndex)
    {
        return frameData.GetSampleChildrenCountRecursive(sampleIndex) + sampleIndex + 1;
    }
}
```
