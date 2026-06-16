<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.GfxResourceInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides methods for retrieving graphics resource information.

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

Additional resources: FrameDataView.GetGfxResourceInfo.

### Properties

| Property | Description |
| --- | --- |
| relatedAllocationRootId | Related native allocation id of the graphics resource. |
| relatedEntityId | Related EntityId of Unity Object. |
