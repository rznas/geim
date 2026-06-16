<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Memory.CaptureFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flags that specify what kind of data to capture in a snapshot.

These flags provide control for what broad data categories should be included in the snapshot. For general purpose captures it is recommended to capture with all flags, or at least with CaptureFlags.ManagedObjects, CaptureFlags.NativeObjects and CaptureFlags.NativeAllocations.

For more focused investigations where the size of the snapshot and the speed at which it is taken are important, you can use a narrower set of CaptureFlags. For example, if the only goal is to check native object sizes, then not setting the CaptureFlags.ManagedObjects flag can greately reduce capture time and size. If detailed NativeAllocations, such as those used by native collections, and the graphics sizes of native objects is not important, the CaptureFlags.NativeAllocations can be left off as well.

**Note:** CaptureFlags.NativeAllocations and CaptureFlags.NativeAllocationSites won't add extra data to the snapshot unless the build supports the collection of native call stack information, which currently requires source code access.

```csharp
using System;
using System.Collections;
using System.IO;
using Unity.Profiling.Memory;
using UnityEngine;public static class MemoryProfilerExample
{
    public static IEnumerator TakeSnapshot()
    {
        var snapshotFileName = "SnapshotName.tmpsnap";
        // Make sure the file does not exist, e.g. as a left over of a failed previous attempt to take a snapshot.
        if (File.Exists(snapshotFileName))
            File.Delete(snapshotFileName);        bool snapshotFinished = false;
        string resultingSnapshotPath = null;
        MemoryProfiler.TakeSnapshot(snapshotFileName, (filePath, success) =>
        {
            snapshotFinished = true;
            if (success)
            {
                resultingSnapshotPath = Path.GetFullPath(filePath);
                Debug.Log($"Snapshot captured and stored at {resultingSnapshotPath}.");
            }
            else
            {
                Debug.LogError("Failed to take a snapshot.");
            }
        },
            CaptureFlags.ManagedObjects | CaptureFlags.NativeObjects | CaptureFlags.NativeAllocations);        while (!snapshotFinished)
        {
            yield return null;
        }        if (resultingSnapshotPath != null && File.Exists(resultingSnapshotPath))
        {
            var finalPath = resultingSnapshotPath.Replace(".tmpsnap", ".snap");
            // Remove any pre-existing file first.
            if (File.Exists(finalPath))
                File.Delete(finalPath);            // Now that writing to the file has succesfully completed, rename the file to the .snap extension to denote that the Memory Profiler can open it.
            File.Move(resultingSnapshotPath, finalPath);            // If you don't have access to the Player's file system you could also upload the file to an end-point that is accessible to you here.
        }
    }
}
```

Additional resources: [Memory Profiler package](https://docs.unity3d.com/Packages/com.unity.memoryprofiler@latest/), MemoryProfiler.TakeSnapshot.

### Properties

| Property | Description |
| --- | --- |
| ManagedObjects | Specifies that the entire managed heap and all the data needed to parse it should be captured as part of the Memory Snapshot. |
| NativeObjects | Specifies that information about Native Objects should be collected. |
| NativeAllocations | Specifies that the Native Memory used by any Native Allocation made by Unity should be captured. |
| NativeAllocationSites | Specifies the location that each native allocation was allocated at. |
| NativeStackTraces | Specifies that Call-Stack Symbols for the Native Call-stack of each Allocation should be collected. |
