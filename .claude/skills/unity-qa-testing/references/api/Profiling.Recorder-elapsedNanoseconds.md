<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Recorder-elapsedNanoseconds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Accumulated time of Begin/End pairs for the previous frame in nanoseconds. (Read Only)

Long-lasting operations (for example, on a preloading thread) might not end within a single frame. In this case, **elapsedNanoseconds** is calculated until the end of the frame, so you can always see activity for these operations.

```csharp
using UnityEngine;
using UnityEngine.Profiling;public class ExampleClass : MonoBehaviour
{
    Recorder behaviourUpdateRecorder;
    void Start()
    {
        behaviourUpdateRecorder = Recorder.Get("BehaviourUpdate");
        behaviourUpdateRecorder.enabled = true;
    }    void Update()
    {
        if (behaviourUpdateRecorder.isValid)
            Debug.Log("BehaviourUpdate time: " + behaviourUpdateRecorder.elapsedNanoseconds);
    }
}
```

Use *elapsedNanoseconds* to retrieve timings of a code tagged with ProfilerMarker.Auto.

```csharp
using UnityEngine;
using UnityEngine.Profiling;public class Example
{
    public static void TimeSynchronousMethodWithMarkers()
    {
        var recorder = Recorder.Get("MyMarker");
        recorder.enabled = true; // Start measurements        // Call method which uses MyMarker
        // MyMethod();        recorder.enabled = false; // Stops measurements and makes data available immediately
        Debug.Log("MyMarker total time, ns: " + recorder.elapsedNanoseconds);
    }
}
```

In synchronous measurements that don't involve a frame change, *elapsedNanoseconds* only becomes a non-zero value after the Recorder is disabled.
