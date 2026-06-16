<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnParticleSystemStopped.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

OnParticleSystemStopped is called when all particles in the system have died, and no new particles will be born. New particles cease to be created either after Stop is called, or when the duration property of a non-looping system has been exceeded.

This can be used to notify a script of when a Particle System has finished. In order to receive the callback, you must set the ParticleSystem.MainModule.stopAction property to Callback.

```csharp
using UnityEngine;
using System.Collections;
using System.Collections.Generic;public class StoppedScript : MonoBehaviour
{
    void Start()
    {
        var main = GetComponent<ParticleSystem>().main;
        main.stopAction = ParticleSystemStopAction.Callback;
    }    void OnParticleSystemStopped()
    {
        Debug.Log("System has stopped!");
    }
}
```

In order to retrieve detailed information about all the collisions caused by the ParticleSystem, you must use ParticlePhysicsExtensions.GetTriggerParticles to retrieve the array of Particle.
