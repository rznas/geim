<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings-asyncUploadTimeSlice.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the time-slice allocated per frame for asynchronous texture and mesh data uploads.

The minimum value is 1 millisecond and the maximum value is 33 milliseconds.

The `asyncUploadTimeSlice` property defines the maximum amount of time, in milliseconds, the CPU dedicates to asynchronously uploading texture or mesh data during each frame. Unity's asynchronous upload system uses this time-sliced approach to ensure that upload operations don't block the main thread and that performance remains smooth during runtime. If there are no pending asynchronous upload operations remaining, Unity reallocates this time to other CPU tasks, optimizing system performance.

This property is useful for prioritizing asynchronous asset uploads in scenes with frequent small texture or mesh loads while maintaining control over CPU usage. By increasing the time slice, Unity may be able to upload more assets on a given frame. Conversely, reducing this value ensures that asset uploads consume less CPU time per frame, leaving more resources available for other tasks, such as gameplay logic or physics calculations.

```csharp
using UnityEngine;public class StartupExampleScript : MonoBehaviour
{
    void Start()
    {
        // Set time-slice to 2 ms
        QualitySettings.asyncUploadTimeSlice = 2;
    }
}
```

The asynchronous upload pipeline allows Unity to perform time-sliced asynchronous texture and mesh data uploads on the render thread. This pipeline provides fine-grained control over memory usage and the time-slicing mechanism, ensuring that asset uploads don't block the main thread and are managed efficiently during runtime. To minimize memory allocations, the pipeline re-uses a ring buffer to process texture and mesh data. You can adjust the size of this ring buffer using the asyncUploadBufferSize property.

This functionality is useful for optimizing scenes with frequent dynamic asset loading or high-memory environments, such as open-world games or applications with large textures and meshes. By allowing asynchronous data uploads, Unity ensures smooth performance and avoids sudden spikes in memory usage or frame times during intensive loading operations.

The asynchronous upload pipeline minimizes allocations, except for the unavoidable allocations performed by the graphics driver itself. It's designed to reuse existing memory efficiently, reducing fragmentation and overhead.

Additional resources: Loading texture and mesh data.
