<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.LifetimeByEmitterSpeedModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Lifetime By Emitter Speed Module controls the initial lifetime of each particle based on the speed of the emitter when the particle was spawned.

This module multiplies the start lifetime of particles with a value that depends on the speed of the object that spawned them. For most Particle Systems, this is the GameObject velocity, but for sub-emitters, the velocity comes from the parent particle that the sub-emitter particle originated from.

Additional resources: ParticleSystem, ParticleSystem.MainModule.startLifetime.

### Properties

| Property | Description |
| --- | --- |
| curve | Use this curve to define which value to multiply the start lifetime of a particle with, based on the speed of the emitter when the particle is spawned. |
| curveMultiplier | Use this property to change the curve multiplier. |
| enabled | Use this property to enable or disable the LifetimeByEmitterSpeed module. |
| range | Control the start lifetime multiplier between these minimum and maximum speeds of the emitter. |
