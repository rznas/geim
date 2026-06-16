<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.Particle-velocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The velocity of the particle, measured in units per second.

This velocity is used for effects that are based on physics. Examples of features that use this type of velocity are the Force module, Gravity, and Start Speed. The system stores this velocity across frames, and reapplies it to the particle position on each simulation step.

The velocity is also used by the ParticleSystemRenderer if *Render Mode* is set to ParticleSystemRenderMode.Stretch.

Additional resources: ParticleSystem.Particle.animatedVelocity, ParticleSystem.Particle.totalVelocity.
