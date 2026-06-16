<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.GetItemColumnDataAsDouble.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Hierarchy item identifier. |
| column | Column identifier. |

### Returns

**double** Value of the correspnding column as double.

### Description

Returns double representation of hierarchy item value associated with the column.

Use to retrieve value with high precision for columns such as HierarchyFrameDataView.columnStartTime which represents sample start time in milliseconds.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Profiling;
using UnityEditorInternal;class Example
{
    static List<int> childrenIdCache = new List<int>();    static int FindChildItemByFunctionName(HierarchyFrameDataView frameData, int parentId, string functionName)
    {
        frameData.GetItemChildren(parentId, childrenIdCache);
        foreach (var childId in childrenIdCache)
        {
            var name = frameData.GetItemName(childId);
            if (name == functionName)
                return childId;
        }        return HierarchyFrameDataView.invalidSampleId;
    }    static double GetSampleStartTime(string sampleName)
    {
        using (var frameData = ProfilerDriver.GetHierarchyFrameDataView(ProfilerDriver.lastFrameIndex, 0, HierarchyFrameDataView.ViewModes.Default, HierarchyFrameDataView.columnDontSort, false))
        {
            var sampleId = FindChildItemByFunctionName(frameData, frameData.GetRootItemID(), sampleName);
            if (HierarchyFrameDataView.invalidSampleId == sampleId)
                return 0;            double startTime = frameData.GetItemColumnDataAsDouble(sampleId, HierarchyFrameDataView.columnStartTime);
            return startTime;
        }
    }
}
```

Additional resources: HierarchyFrameDataView.GetItemColumnData, HierarchyFrameDataView.GetItemColumnDataAsFloat.
