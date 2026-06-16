<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.GetGfxResourceInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gfxResourceId | Graphics resource identifier. |
| info | Graphics resource information output struct with instance ID and other attributes. |

### Returns

**bool** Returns true if resource exists in the frame and the information is available.

### Description

Gets information for a given graphics resource identifier.

Use this function to retrieve information about related Unity Objects for the graphics resource in the Profiler capture. On the Render Thread, the Profiler capture can be associated with a graphics resource representing a Texture, RenderTexture, Mesh Asset, or other graphics resource. This information is included as part of the sample metadata; you can use the RawFrameDataView.GetSampleMetadataAsInt or HierarchyFrameDataView.GetItemInstanceID functions to retrieve this metadata.

```csharp
using UnityEditorInternal;
using UnityEditor.Profiling;public class Example
{
    public static string GetGfxResourceName(int frame, ulong gfxResourceId)
    {
        using (var frameData = ProfilerDriver.GetRawFrameDataView(frame, 0))
        {
            if (frameData.GetGfxResourceInfo(gfxResourceId, out var info))
            {
                if (frameData.GetUnityObjectInfo(info.relatedInstanceId, out var objectInfo))
                    return objectInfo.name;
            }
            return "N/A";
        }
    }
}
```
