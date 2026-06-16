<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Sampler.GetRecorder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Recorder** Recorder object associated with the Sampler.

### Description

Returns Recorder associated with the Sampler.

Each Sampler has only one recorder. Multiple calls to **GetRecorder** return references that control the same native Recorder object. If Sampler object is invalid, it returns invalid Recorder object as well.

```csharp
using UnityEngine;
using UnityEngine.Profiling;public class ExampleClass : MonoBehaviour
{
    Recorder behaviourUpdateRecorder;
    void Start()
    {
        var sampler = Sampler.Get("BehaviourUpdate");
        behaviourUpdateRecorder = sampler.GetRecorder();
        if (behaviourUpdateRecorder.isValid)
            behaviourUpdateRecorder.enabled = true;
    }    void Update()
    {
        if (behaviourUpdateRecorder.isValid)
            Debug.Log("BehaviourUpdate time: " + behaviourUpdateRecorder.elapsedNanoseconds);
    }
}
```

**Note:** At the moment Samplers are available only in the Editor and Development Players. Use Sampler.isValid to verify if Sampler can be used to create a valid Recorder.

Additional resources: Sampler.isValid, Recorder, Recorder.isValid.
