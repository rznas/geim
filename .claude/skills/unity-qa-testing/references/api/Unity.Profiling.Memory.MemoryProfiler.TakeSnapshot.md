<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Memory.MemoryProfiler.TakeSnapshot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Destination path for the memory snapshot file. |
| finishCallback | Event that is fired once the memory snapshot has finished the process of capturing data. The first parameter denotes if a snapshot file was successfully created on the calling device, the second one contains the resulting snapshot path. |
| screenshotCallback | Event that you can specify to retrieve a screenshot after the snapshot has finished. The first parameter denotes if a screenshot file was successfully created on the calling device, the second one contains the resulting screenshot path and the third one the data of the snapshot as DebugScreenCapture. |
| captureFlags | Flag mask defining the content of the memory snapshot. |

### Description

Triggers a memory snapshot capture to generate a capture of the memory state that the Memory Profiler can open and analyze.

Request a memory snapshot capture with the provided arguments. Not all fields corresponding to the capture flags are collected. This depends on the target build used to capture the snapshot. Specifically CaptureFlags.NativeAllocationSites and CaptureFlags.NativeStackTraces relate to data that can only be collected from a build that supports the collection of native call stack information. Collecting native call stack information currently requires source code access. When providing these flags to capture from builds that do not support them they are ignored.

The `path` parameter relates to the device that the call is made on, but the connection state of the Editor or Player this method is called from determines what process is captured and where the snapshot file will be created: In the system, there are two different behaviors of data collection:

* When you call this from a Player that is connected to an Editor via PlayerConnection, the file is not stored locally but streamed out to the connected Editor. The provided path should be empty, or MemoryProfiler.TakeTempSnapshot could be called instead. The bool value of the `finishCallback` will be false, even if the snapshot was succesfully saved in the Editor.

* When you call this from a Player that is **not** connected to an Editor via PlayerConnection, the file is created on the host device of the Player.

* When you call this from an Editor, the file is created on the host device of the Editor. If the Editor is not connected to a Player via EditorConnection, it will capture the Player, otherwise it will capture the Editor.

Metadata collection happens just before the snapshot is taken, if at least one listener was registered to the MemoryProfiler.CreatingMetadata event. At the end of the process, the `finishCallback` is triggered. If a screenshot callback was provided to the call, this is called at the end of the current frame.

Note: * If an absolute path is provided, make sure the application can write to that path. If only a file name or a relative path are provided, the snapshot will be stored at a path relative to Application.dataPath and API like File.Open can be used with the same relative path information. * Listeners of the MemoryProfiler.CreatingMetadata event are notified in the Player or Editor that is being captured, which might not be the Editor that called this method but a connected Player instead. * Screenshot callbacks are only called in standalone players or in Play mode. If no callbacks are supplied for `screenshotCallback`, no screenshot is taken. * It's recommended to call this API from within a Coroutine, yielding until both callbacks have been called, because the capture process locks code execution on the host device while it is taken and takes time to execute. Calling the API from a coroutine prevents the capturing Editor from locking up in the meantime. * There is no way to capture Play mode in isolation, only the entire Editor. Memory usage in the Editor can differ drastically from that in a built Player. Always make sure to analyze memory usage in development Players running on your target devices. * You can only take the next snapshot after the `finishCallback` is triggered. * Use the [Memory Profiler package](https://docs.unity3d.com/Packages/com.unity.memoryprofiler@latest/) to open and analyze the resulting files.

```csharp
using System;
using System.Collections;
using System.IO;
using Unity.Collections.LowLevel.Unsafe;
using Unity.Collections;
using Unity.Profiling;
using Unity.Profiling.Memory;
using UnityEngine;#if UNITY_EDITOR
using UnityEditor;
using UnityEditor.Networking.PlayerConnection;
using UnityEngine.Networking.PlayerConnection;
// Reguires com.unity.editorcoroutines package to be installed and its assembly referenced
using Unity.EditorCoroutines.Editor;
#endif#if UNITY_EDITOR
public class MemoryProfilerExampleWindow : EditorWindow
{
    IConnectionState m_PlayerConnectionState;
    [MenuItem("Windows/Analysis/MemoryProfilerAPIExample")]
    static void InitializeOnLoad()
    {
        var window = EditorWindow.GetWindow<MemoryProfilerExampleWindow>();
        window.m_PlayerConnectionState = PlayerConnectionGUIUtility.GetConnectionState(window);
        window.Show();
    }    void TakeSnapshot()
    {
        // In the Unity Editor, the screenshot function only gets called when the not profiling Playmode or if Playmode is active.
        // In otherwords, capturing an Editor outside of Playmode does not create a screenshot and waiting for the callback would create and endless loop.
        var takeScreenshot = m_PlayerConnectionState.connectedToTarget == ConnectionTarget.Player || Application.isPlaying;
        EditorCoroutineUtility.StartCoroutine(MemoryProfilerExample.TakeSnapshot(takeScreenshot), this);
    }
}
#endifpublic static class MemoryProfilerExample
{
    public static IEnumerator TakeSnapshot(bool takeScreenshot)
    {
        var snapshotFileName = "SnapshotName.tmpsnap";
        // Make sure the file does not exist, e.g. as a left over of a failed previous attempt to take a snapshot.
        if (File.Exists(snapshotFileName))
            File.Delete(snapshotFileName);        var snapshotFinished = false;
        var screenshoFinished = false;
        string resultingSnapshotPath = null;
        string resultingScreenshotPath = null;
        var captureFlags = CaptureFlags.ManagedObjects | CaptureFlags.NativeObjects | CaptureFlags.NativeAllocations;
        Action<string, bool> snapshotCaptureFunction = (snapshotFilePath, success) =>
        {
            snapshotFinished = true;
            if (success)
            {
                resultingSnapshotPath = Path.GetFullPath(snapshotFilePath);
                Debug.Log($"Snapshot captured and stored at {resultingSnapshotPath}.");
            }
            else
            {
                Debug.LogError("Failed to take a snapshot.");
            }
        };
        Action<string, bool, DebugScreenCapture> screenshotCaptureFunction = (screenshotFilePath, success, screenshotData) =>
        {
            screenshoFinished = true;
            if (!success || screenshotData.RawImageDataReference.Length == 0)
                return;            // Note: for the Memory Profiler to be able to pick up the screenshot, the name and path needs to match that of the snapshot file, safe for the extension.
            // The path provided by the callback is based on the path provided to TakeSnapshot.
            if (Path.HasExtension(screenshotFilePath))
            {
                screenshotFilePath = Path.ChangeExtension(screenshotFilePath, ".tmppng");
            }            var texture = new Texture2D(screenshotData.Width, screenshotData.Height, screenshotData.ImageFormat, false, false);
            CopyDataToTexture(texture, screenshotData.RawImageDataReference);
            File.WriteAllBytes(screenshotFilePath, texture.EncodeToPNG());
            if (Application.isPlaying)
                UnityEngine.Object.Destroy(texture);
            else
                UnityEngine.Object.DestroyImmediate(texture);
            resultingScreenshotPath = screenshotFilePath;
        };        if (takeScreenshot)
            MemoryProfiler.TakeSnapshot(snapshotFileName, snapshotCaptureFunction, screenshotCaptureFunction, captureFlags);
        else
            MemoryProfiler.TakeSnapshot(snapshotFileName, snapshotCaptureFunction, captureFlags);        // The finishCallback is called first.
        while (!snapshotFinished)
        {
            yield return null;
        }
        // The screenshotCallback is called second and can take a moment longer,
        // but don't wait for it if it is not being taken.
        while (takeScreenshot && !screenshoFinished)
        {
            yield return null;
        }        if (resultingSnapshotPath != null && File.Exists(resultingSnapshotPath))
        {
            var finalSnapshotPath = Path.ChangeExtension(resultingSnapshotPath, ".snap");
            var finalScreenshotPath = resultingScreenshotPath != null ? Path.ChangeExtension(resultingScreenshotPath, ".png") : null;            // Remove any pre-existing files first.
            if (File.Exists(finalSnapshotPath))
                File.Delete(finalSnapshotPath);
            if (finalScreenshotPath != null && File.Exists(finalScreenshotPath))
                File.Delete(finalScreenshotPath);            // Now that writing to the file has succesfully completed, rename the file to the .snap extension to denote that the Memory Profiler can open it.
            File.Move(resultingSnapshotPath, finalSnapshotPath);
            if (finalScreenshotPath != null)
                File.Move(resultingScreenshotPath, finalScreenshotPath);            // If you don't have access to the Player's file system you could also upload the file to an end-point that is accessible to you here.
        }
    }    static void CopyDataToTexture(Texture2D tex, NativeArray<byte> byteArray)
    {
        unsafe
        {
            void* srcPtr = NativeArrayUnsafeUtility.GetUnsafeBufferPointerWithoutChecks(byteArray);
            void* dstPtr = tex.GetRawTextureData<byte>().GetUnsafeReadOnlyPtr();
            UnsafeUtility.MemCpy(dstPtr, srcPtr, byteArray.Length * sizeof(byte));
        }
    }
}
```

Additional resources: [Memory Profiler package](https://docs.unity3d.com/Packages/com.unity.memoryprofiler@latest/), Application.dataPath, DebugScreenCapture, MemoryProfiler.CreatingMetadata, PlayerConnectionGUIUtility.GetConnectionState, EditorCoroutineUtility.
