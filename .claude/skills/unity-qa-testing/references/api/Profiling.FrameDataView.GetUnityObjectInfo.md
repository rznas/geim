<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.GetUnityObjectInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceId | UnityEngine.Object instance identifier. |
| info | UnityEngine.Object information output struct with name and other attributes. |

### Returns

**bool** Returns true if instanceId exists in the frame and object information is available.

### Description

Gets the UnityEngine.Object information for a given Instance ID.

Obtains information about the UnityEngine.Object instance in the profiler capture.

The Profiler sample can be associated with an instance of an object instance that represents an Asset, a GameObject, or anything that is derived from UnityEngine.Object.
 This information is available as a part of sample metadata. To get this metadata you can use RawFrameDataView.GetSampleMetadataAsInt or HierarchyFrameDataView.GetItemInstanceID.

```csharp
using UnityEditorInternal;
using UnityEditor.Profiling;public class Example
{
    public static string GetInstanceName(int frame, int instanceId)
    {
        using (var frameData = ProfilerDriver.GetRawFrameDataView(frame, 0))
        {
            if (!frameData.GetUnityObjectInfo(instanceId, out var info))
                return "N/A";
            return (frameData.GetUnityObjectNativeTypeInfo(info.nativeTypeIndex, out var typeInfo)) ? typeInfo.name + ": " + info.name : info.name;
        }
    }
}
```

Additional resources: RawFrameDataView.GetSampleMetadataAsInt, HierarchyFrameDataView.GetItemInstanceID, Object.GetInstanceID.
