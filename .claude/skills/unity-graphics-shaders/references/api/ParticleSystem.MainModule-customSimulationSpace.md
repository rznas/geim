<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-customSimulationSpace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Simulate particles relative to a custom transform component.

Additional resources: ParticleSystemSimulationSpace.Custom.

```csharp
using System.Collections;
using UnityEngine;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public Transform relativeTo;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.simulationSpace = ParticleSystemSimulationSpace.Custom;
        main.customSimulationSpace = relativeTo;
    }
}
```
