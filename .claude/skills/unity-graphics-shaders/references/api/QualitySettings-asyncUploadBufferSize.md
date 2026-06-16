<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings-asyncUploadBufferSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the ring buffer size used for asynchronous texture and mesh data uploads.

The `asyncUploadBufferSize` property determines the size of the ring buffer used for asynchronous texture and mesh uploads in Unity. The minimum value for this property is 2 MB, and the maximum value is 2047 MB.

This property helps optimize the loading of scenes with large assets or many small assets. If the buffer is too small to accommodate the largest asset currently loading, Unity automatically resizes the buffer to fit. However, resizing the buffer can consume additional system resources and introduce memory overhead.

To prevent buffer resizing, set the value to match the size of the largest texture or mesh in the Scene. If you encounter excessive memory usage or performance issues, consider lowering this value to conserve resources. Alternatively, you can disable asyncUploadPersistentBuffer, although this might lead to memory fragmentation and further complications. Be cautious when disabling persistent buffers, as fragmented memory can make future memory allocations unpredictable and less efficient.

```csharp
using UnityEngine;public class StartupExampleScript : MonoBehaviour
{
    void Start()
    {
        // Set ring buffer size to 16 MB.
        QualitySettings.asyncUploadBufferSize = 16;
    }
}
```

The asynchronous upload pipeline allows Unity to perform time-sliced asynchronous texture and mesh data uploads on the render thread. This pipeline provides fine-grained control over memory usage and the time-slicing mechanism, ensuring that asset uploads don't block the main thread and are managed efficiently during runtime. To minimize memory allocations, the pipeline re-uses a ring buffer to process texture and mesh data. You can adjust the size of this ring buffer using the asyncUploadBufferSize property.

This functionality is useful for optimizing scenes with frequent dynamic asset loading or high-memory environments, such as open-world games or applications with large textures and meshes. By allowing asynchronous data uploads, Unity ensures smooth performance and avoids sudden spikes in memory usage or frame times during intensive loading operations.

The asynchronous upload pipeline minimizes allocations, except for the unavoidable allocations performed by the graphics driver itself. It's designed to reuse existing memory efficiently, reducing fragmentation and overhead.

Additional resources: Loading texture and mesh data.
