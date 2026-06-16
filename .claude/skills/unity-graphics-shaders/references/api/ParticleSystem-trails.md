<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-trails.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the TrailsModule of a Particle System.

This module adds trails to your particles. Trails can either be left in the wake of particles as they move, or can connect each particle in the system together.

Particle System modules do not need to be reassigned back to the system; they are interfaces and not independent objects.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour {    void Start() {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var trails = ps.trails;
        trails.enabled = true;
        trails.ratio = 0.5f;
    }
}
```
