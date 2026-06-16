<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Recorder.Get.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| samplerName | Sampler name. |

### Returns

**Recorder** Recorder object for the specified Sampler.

### Description

Use this function to get a Recorder for the specific Profiler label.

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

Additional resources: Sampler, Sampler.GetRecorder.
