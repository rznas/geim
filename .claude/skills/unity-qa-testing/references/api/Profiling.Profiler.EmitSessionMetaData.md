<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.EmitSessionMetaData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Unique identifier associated with the data. |
| tag | Data stream index. |
| data | Binary data. |

### Description

Write metadata associated with the whole Profiler session capture.

Use *EmitSessionMetaData* to write arbitrary binary data that should be available for all frames of this session. Data must contain only blittable types.

If the information you want to store in the Profiler meta data might change from frame to frame, consider using EmitFrameMetaData instead.

```csharp
using System;
using System.Diagnostics;
using Unity.Collections;
using UnityEngine;
using UnityEngine.Profiling;public class Example
{
    public struct TextureInfo
    {
        public int format;
        public int w;
        public int h;
    }    public static readonly Guid MyProjectId = new Guid("7E1DEA84-51F1-477A-82B5-B5C57AC1EBF7");
    public static readonly int TextureInfoTag = 0;
    public static readonly int TextureDataTag = 1;    [Conditional("ENABLE_PROFILER")]
    public void EmitTextureToProfilerStream(Texture2D t)
    {
        if (!Profiler.enabled)
            return;
        TextureInfo textureInfo = new TextureInfo() { format = (int)t.format, w = t.width, h = t.height };
        NativeArray<byte> textureData = t.GetRawTextureData<byte>();
        Profiler.EmitSessionMetaData(MyProjectId, TextureInfoTag, new[] { textureInfo });
        Profiler.EmitSessionMetaData(MyProjectId, TextureDataTag, textureData);
    }
}
```

**Note:** 
 Writing large chunks of data might increase the Profiler's overhead and memory usage. Always check if Profiler is enabled before generating data. When possible, write data in small chunks to reduce memory usage.

Additional resources: FrameDataView.GetSessionMetaData.
