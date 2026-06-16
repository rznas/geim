<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-simulationSpace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This selects the space in which to simulate particles. It can be either world or local space.

Toggle between local and world space simulation using the following example:

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool useLocal = true;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
        var main = ps.main;
        useLocal = main.simulationSpace == ParticleSystemSimulationSpace.Local;
    }    void Update()
    {
        var main = ps.main;
        main.simulationSpace = useLocal ? ParticleSystemSimulationSpace.Local : ParticleSystemSimulationSpace.World;
    }    void OnGUI()
    {
        useLocal = GUI.Toggle(new Rect(10, 60, 200, 30), useLocal, "Use Local Simulation Space");
    }
}
```

Simulate particles relative to an independent game object using the following example:

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;public class ParticleSystemScript : MonoBehaviour
{
    private ParticleSystem ps;
    public Transform relativeTo;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.simulationSpace = ParticleSystemSimulationSpace.Custom;
        main.customSimulationSpace = relativeTo;
    }    void Update()
    {
    }
}
```
