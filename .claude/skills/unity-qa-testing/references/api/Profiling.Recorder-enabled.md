<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Recorder-enabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables recording.

When enabled Recorder collects data regardless of Profiler being enabled or not.

**Note:**
 Set to *false* to make measurements available immediately for synchronous testing scenarious.

```csharp
using UnityEngine;
using UnityEngine.Profiling;public class Example
{
    public static void TimeSynchronousMethodWithMarkers()
    {
        var recorder = Recorder.Get("MyMarker");
        recorder.enabled = true; // Starts measurements        // Call method which uses MyMarker
        // MyMethod();        recorder.enabled = false; // Stops measurements and makes data available immediately
        Debug.Log("MyMarker total time, ns: " + recorder.elapsedNanoseconds);
    }
}
```
