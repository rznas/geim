<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Memory.MemoryProfiler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The memory profiler API provides functionality for taking memory snapshots or adding metadata to them.

The API is available at runtime. When you call this API to take snapshots, it stores the snapshots locally on the storage of the device the Player is running on, or stream it out if the Unity Editor is attached via PlayerConnection. When called from within the Editor, it captures data from the Editor or an attached Player, depending on the current target of the PlayerConnection. You can also set the current target of the Player Connection via the Editor through the Profiler Window, the [Memory Profiler](https://docs.unity3d.com/Packages/com.unity.memoryprofiler@latest/) or the Console Window. You can open the resulting snapshot files with the [Memory Profiler](https://docs.unity3d.com/Packages/com.unity.memoryprofiler@latest/), if they are saved with the `.snap` file extension.

Listeners of the MemoryProfiler.CreatingMetadata event will only be notified on the Player or Editor where the snapshot is being taken from.

```csharp
using System;
using System.Collections;
using System.IO;
using Unity.Profiling.Memory;
using UnityEngine;public static class MemoryProfilerExample
{
    [RuntimeInitializeOnLoadMethod]
    public static void Initialize()
    {
        MemoryProfiler.CreatingMetadata += CreateMetadata;
    }    static void CreateMetadata(MemorySnapshotMetadata metadata)
    {
        metadata.Description = $"This Memory Snapshot capture started at {DateTime.Now}.";
    }    public static IEnumerator TakeSnapshot()
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

Additional resources: [Memory Profiler package](https://docs.unity3d.com/Packages/com.unity.memoryprofiler@latest/), PlayerConnection, EditorConnection, PlayerConnectionGUIUtility.

### Static Methods

| Method | Description |
| --- | --- |
| TakeSnapshot | Triggers a memory snapshot capture to generate a capture of the memory state that the Memory Profiler can open and analyze. |
| TakeTempSnapshot | Triggers a memory snapshot capture to the Application.temporaryCachePath folder. |

### Events

| Event | Description |
| --- | --- |
| CreatingMetadata | A metadata event that collection methods can subscribe to. |
