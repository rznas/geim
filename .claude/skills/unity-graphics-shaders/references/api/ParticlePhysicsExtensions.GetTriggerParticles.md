<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticlePhysicsExtensions.GetTriggerParticles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ps | Particle system. |
| type | Type of trigger to return particles for. |
| particles | The array of particles matching the trigger event type. |

### Returns

**void** Number of particles with this trigger event type.

### Description

Get the particles that met the condition in the particle trigger module. Returns the number of particles written to the array.

This method is typically called from MonoBehaviour.OnParticleTrigger in response to a trigger callback.
