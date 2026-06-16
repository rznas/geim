<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.GfxResourceInfo-relatedEntityId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Related EntityId of Unity Object.

Graphics resource might be related to the specific Unity Object such as Texture2D, RenderTexture. If *relatedEntityId* isn't zero use FrameData.GetUnityObjectInfo to obtain further information about Unity Object.

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
                if (frameData.GetUnityObjectInfo(info.relatedEntityId, out var objectInfo))
                    return objectInfo.name;
            }
            return "N/A";
        }
    }
}
```
