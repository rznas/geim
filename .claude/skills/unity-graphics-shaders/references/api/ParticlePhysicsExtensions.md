<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticlePhysicsExtensions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Method extension for Physics in Particle System.

### Static Methods

| Method | Description |
| --- | --- |
| GetCollisionEvents | Get the particle collision events for a GameObject. Returns the number of events written to the array. |
| GetSafeCollisionEventSize | Safe array size for use with ParticleSystem.GetCollisionEvents. |
| GetSafeTriggerParticlesSize | Safe array size for use with ParticleSystem.GetTriggerParticles. |
| GetTriggerParticles | Get the particles that met the condition in the particle trigger module. Returns the number of particles written to the array. |
| SetTriggerParticles | Write modified particles back to the Particle System, during a call to OnParticleTrigger. |
