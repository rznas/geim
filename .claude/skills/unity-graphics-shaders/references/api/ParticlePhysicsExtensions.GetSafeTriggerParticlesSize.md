<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticlePhysicsExtensions.GetSafeTriggerParticlesSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ps | Particle system. |
| type | Type of trigger to return size for. |

### Returns

**int** Number of particles with this trigger event type.

### Description

Safe array size for use with ParticleSystem.GetTriggerParticles.

This is guaranteed to be large enough to use with ParticleSystem.GetTriggerParticles for the current frame. GetTriggerParticles may return fewer elements for some GameObjects though.
