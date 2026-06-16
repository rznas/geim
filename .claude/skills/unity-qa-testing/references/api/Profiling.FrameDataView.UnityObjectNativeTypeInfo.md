<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.UnityObjectNativeTypeInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unity native type information.

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

### Properties

| Property | Description |
| --- | --- |
| baseNativeTypeIndex | Base type index. |
| name | Native type name. |
