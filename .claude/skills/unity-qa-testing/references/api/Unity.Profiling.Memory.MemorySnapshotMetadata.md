<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Memory.MemorySnapshotMetadata.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Container for memory snapshot metadata.

Code that subscribes to the MemoryProfiler.CreatingMetadata event receives a MemorySnapshotMetadata object to populate with meta data for a memory snapshot that is about to be taken.

```csharp
using System;
using UnityEngine;
using Unity.Profiling.Memory;public class MemoryProfilerExample : MonoBehaviour
{
    public string levelName = "Default Level Name";    void Start()
    {
        MemoryProfiler.CreatingMetadata += CreateMetadata;
    }    void CreateMetadata(MemorySnapshotMetadata metadata)
    {
        metadata.Description = $"This Memory Snapshot capture started at {DateTime.Now} in level {levelName}.";
    }    void OnDestroy()
    {
        MemoryProfiler.CreatingMetadata -= CreateMetadata;
    }
}
```

**Note:** If the project has the [Memory Profiler package](https://docs.unity3d.com/Packages/com.unity.memoryprofiler@latest/) installed in the Editor, it is recommended to implement a concrete implementation of MemoryProfiler.MetadataCollect instead, which will inject your implementation into any Player builds you make.

Additional resources: MemoryProfiler.MetadataCollect", MemoryProfiler.TakeSnapshot, MemoryProfiler.CreatingMetadata.

### Properties

| Property | Description |
| --- | --- |
| Description | User defined metadata that provides a description for the memory snapshot. |
