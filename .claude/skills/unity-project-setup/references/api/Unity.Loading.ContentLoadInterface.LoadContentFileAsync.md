<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Loading.ContentLoadInterface.LoadContentFileAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameSpace | The ContentNamespace used to filter the results. |
| filename | Path of the file on disk. |
| dependencies | List of the ContentFiles that will be referenced by the file being loaded. The ordering must match the ordering returned from the build process. ContentFile.GlobalTableDependency can be used to indicate that the PersistentManager should be used to resolve references. This allows references to files such as "unity default resources". |
| dependentFence | The load will not begin until this JobHandle completes. A default JobHandle can be used if there is no dependency. |

### Returns

**ContentFile** Handle to access the results of the load process.

### Description

Loads a serialized file asynchronously from disk.

The status of the load operation can be accessed using the returned ContentFile. Objects loaded with this function will not be garbage collected; the user is responsible for calling ContentFile.UnloadAsync to free resources when they are no longer required. The user must call ContentFile.UnloadAsync even if the load fails.

```csharp
using System.Collections;
using Unity.Collections;
using Unity.Content;
using Unity.Loading;
using UnityEngine;public class SampleBehaviour : MonoBehaviour
{
    public IEnumerator Start()
    {
        NativeArray<ContentFile> empty = new NativeArray<ContentFile>();
        ContentFile depFileHandle = ContentLoadInterface.LoadContentFileAsync(ContentNamespace.Default, "path/to/depfile", empty);        NativeArray<ContentFile> depFiles = new NativeArray<ContentFile>(1, Allocator.Temp);
        depFiles[0] = depFileHandle;
        ContentFile rootFileHandle = ContentLoadInterface.LoadContentFileAsync(ContentNamespace.Default, "path/to/rootfile", depFiles);
        depFiles.Dispose();        // yield coroutine until loading is complete
        while (rootFileHandle.LoadingStatus == LoadingStatus.InProgress)
            yield return null;        ulong localFileIdentifierOfObjectIWant = 25;
        GameObject obj = (GameObject)rootFileHandle.GetObject(localFileIdentifierOfObjectIWant);        // When done using obj. unload both files.
        ContentFileUnloadHandle unloadHandleRoot = rootFileHandle.UnloadAsync();
        ContentFileUnloadHandle unloadHandleDep = depFileHandle.UnloadAsync();        // yield coroutine until loading is complete
        while (!unloadHandleRoot.IsCompleted || !unloadHandleRoot.IsCompleted)
            yield return null;        // file is now completly unloaded. obj has been deleted
    }
}
```
