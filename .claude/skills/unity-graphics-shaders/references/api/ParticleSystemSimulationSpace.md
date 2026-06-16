<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemSimulationSpace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the coordinate space in which particles are simulated.

The simulation space determines how particles' positions are calculated relative to their environment. This property controls whether particles are simulated in local space, world space, or relative to a custom transform. The space is defined by the `ParticleSystemSimulationSpace` enum.

For custom space simulation, use ParticleSystem.MainModule.customSimulationSpace to assign a specific Transform as the reference.

```csharp
using UnityEngine;public class ParticleSimulationExample : MonoBehaviour
{
    [SerializeField] private ParticleSystem particleSystem;
    [SerializeField] private Transform customTransform;    void Start()
    {
        var mainModule = particleSystem.main;        // Set the simulation space to Custom and assign a transform.
        mainModule.simulationSpace = ParticleSystemSimulationSpace.Custom;
        mainModule.customSimulationSpace = customTransform;
    }
}
```

Additional resources: MainModule.

### Properties

| Property | Description |
| --- | --- |
| Local | Simulate particles in local space. |
| World | Simulate particles in world space. |
| Custom | Simulate particles relative to a custom transform component, defined by ParticleSystem.MainModule.customSimulationSpace. |
