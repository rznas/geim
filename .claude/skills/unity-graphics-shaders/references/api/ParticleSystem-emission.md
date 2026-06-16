<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-emission.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the EmissionModule of a Particle System.

This module provides control over how many particles are emitted.

Particle System modules do not need to be reassigned back to the system; they are interfaces and not independent objects.

```csharp
// Create a Particle System
// At 2 and 4 secs the number of particles are changed to 100, then 200
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var em = ps.emission;
        em.enabled = true;        em.rateOverTime = 20.0f;        em.SetBursts(
            new ParticleSystem.Burst[]{
                new ParticleSystem.Burst(2.0f, 100),
                new ParticleSystem.Burst(4.0f, 100)
            });
    }
}
```
