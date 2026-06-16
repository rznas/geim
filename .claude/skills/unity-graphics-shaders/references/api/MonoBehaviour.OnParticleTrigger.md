<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnParticleTrigger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

OnParticleTrigger is called when any particles in a Particle System meet the conditions in the trigger module.

This can be used to kill or modify particles that are inside or outside a collision volume.

```csharp
using UnityEngine;
using System.Collections;
using System.Collections.Generic;public class TriggerScript : MonoBehaviour
{
    void OnParticleTrigger()
    {
        ParticleSystem ps = GetComponent<ParticleSystem>();        // particles
        List<ParticleSystem.Particle> enter = new List<ParticleSystem.Particle>();
        List<ParticleSystem.Particle> exit = new List<ParticleSystem.Particle>();        // get
        int numEnter = ps.GetTriggerParticles(ParticleSystemTriggerEventType.Enter, enter);
        int numExit = ps.GetTriggerParticles(ParticleSystemTriggerEventType.Exit, exit);        // iterate
        for (int i = 0; i < numEnter; i++)
        {
            ParticleSystem.Particle p = enter[i];
            p.startColor = new Color32(255, 0, 0, 255);
            enter[i] = p;
        }
        for (int i = 0; i < numExit; i++)
        {
            ParticleSystem.Particle p = exit[i];
            p.startColor = new Color32(0, 255, 0, 255);
            exit[i] = p;
        }        // set
        ps.SetTriggerParticles(ParticleSystemTriggerEventType.Enter, enter);
        ps.SetTriggerParticles(ParticleSystemTriggerEventType.Exit, exit);
    }
}
```

In order to retrieve detailed information about all the collisions caused by the ParticleSystem, ParticlePhysicsExtensions.GetTriggerParticles must be used to retrieve the array of Particle.
