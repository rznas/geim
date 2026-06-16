<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticlePhysicsExtensions.SetTriggerParticles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ps | Particle system. |
| type | Type of trigger to set particles for. |
| particles | Particle array. |
| offset | Offset into the array, if you only want to write back a subset of the returned particles. |
| count | Number of particles to write, if you only want to write back a subset of the returned particles. |

### Description

Write modified particles back to the Particle System, during a call to OnParticleTrigger.

Additional resources: ParticleSystem.GetTriggerParticles.
