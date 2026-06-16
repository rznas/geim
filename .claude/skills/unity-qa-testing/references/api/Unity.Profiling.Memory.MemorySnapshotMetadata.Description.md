<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Memory.MemorySnapshotMetadata.Description.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

User defined metadata that provides a description for the memory snapshot.

This propery provides a free form text input method to extend the memory snapshot with extra information such as the context in which the snapshot was taken.

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
