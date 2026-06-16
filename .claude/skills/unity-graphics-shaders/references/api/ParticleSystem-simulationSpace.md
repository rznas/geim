<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-simulationSpace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This selects the space in which to simulate particles. It can be either world or local space.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    ParticleSystem part;
    bool useLocal = true;    void Start()
    {
        part = GetComponent<ParticleSystem> ();
        useLocal = (part.simulationSpace == ParticleSystemSimulationSpace.Local);
    }    void Update()
    {
        part.simulationSpace = (useLocal ? ParticleSystemSimulationSpace.Local : ParticleSystemSimulationSpace.World);
    }    void OnGUI()
    {
        useLocal = GUI.Toggle(new Rect(10, 60, 200, 30), useLocal, " Use Local Simulation Space");
    }
}
```
