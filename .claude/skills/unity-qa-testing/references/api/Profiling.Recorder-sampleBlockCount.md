<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Recorder-sampleBlockCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Number of time Begin/End pairs was called during the previous frame. (Read Only)

The counter represents the number of complete or running profiling block during previous frame.

```csharp
using UnityEngine;
using UnityEngine.Profiling;public class ExampleClass : MonoBehaviour
{
    Recorder materialSetPass;
    void Start()
    {
        materialSetPass = Recorder.Get("Material.SetPassFast");
        materialSetPass.enabled = true;
    }    void Update()
    {
        if (materialSetPass.isValid)
            Debug.Log("Material SetPass count: " + materialSetPass.sampleBlockCount);
    }
}
```
