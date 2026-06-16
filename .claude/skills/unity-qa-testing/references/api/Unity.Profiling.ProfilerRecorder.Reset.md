<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerRecorder.Reset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stops data collection and clears collected samples.

Sets Count to 0 and WrappedAround to false and stops collection.

```csharp
using Unity.Profiling;
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    ProfilerRecorder recorder;    void OnEnable()
    {
        recorder = new ProfilerRecorder("MyMarker", 1);
        recorder.Start();
    }    void OnDisable()
    {
        recorder.Dispose();
    }    void Update()
    {
        recorder.Reset();
        recorder.Start();
    }    void LateUpdate()
    {
        Debug.Log("MyMarker costs between Update and LateUpdate, ms: " + recorder.CurrentValue);
    }
}
```

**Note:** 
 
If *Reset* is used every frame, the LastValue and LastValueAsDouble properties will be 0.
