<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.Particle-startLifetime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The starting lifetime of the particle.

This is the total lifetime of this particle in seconds. The Particle System sets this value when it first spawns the particle.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        ParticleSystem.Particle particle = new ParticleSystem.Particle();        // Calculate how long the particle has been alive.
        float timeAlive = particle.startLifetime - particle.lifetime;
    }
}
```
