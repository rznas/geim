<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings-asyncUploadPersistentBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This flag determines whether Unity retains the ring buffer allocation used for asynchronous texture and mesh uploads after all upload operations have completed.

When this property is set to `true`, the ring buffer memory remains allocated, allowing Unity to reuse it for future uploads without additional performance overhead. The default value is `true`. This property is useful for optimizing performance in scenes with frequent or large asynchronous upload operations by avoiding repeated memory allocations and deallocations. However, if memory usage is a concern, you can reduce the runtime memory footprint by setting this property to `false`. Doing so releases the ring buffer memory when upload operations complete, but it might lead to memory fragmentation. Excessive fragmentation can negatively impact memory allocation efficiency and, subsequently, runtime performance.

```csharp
using UnityEngine;
public class StartupExampleScript : MonoBehaviour
{
    void Start()
    {
        // The upload buffer will be deallocated when all uploads are complete.
        QualitySettings.asyncUploadPersistentBuffer = false;
    }
}
```

The asynchronous upload pipeline allows Unity to perform time-sliced asynchronous texture and mesh data uploads on the render thread. This pipeline provides fine-grained control over memory usage and the time-slicing mechanism, ensuring that asset uploads don't block the main thread and are managed efficiently during runtime. To minimize memory allocations, the pipeline re-uses a ring buffer to process texture and mesh data. You can adjust the size of this ring buffer using the asyncUploadBufferSize property.

This functionality is useful for optimizing scenes with frequent dynamic asset loading or high-memory environments, such as open-world games or applications with large textures and meshes. By allowing asynchronous data uploads, Unity ensures smooth performance and avoids sudden spikes in memory usage or frame times during intensive loading operations.

The asynchronous upload pipeline minimizes allocations, except for the unavoidable allocations performed by the graphics driver itself. It's designed to reuse existing memory efficiently, reducing fragmentation and overhead.

Additional resources: Loading texture and mesh data.
