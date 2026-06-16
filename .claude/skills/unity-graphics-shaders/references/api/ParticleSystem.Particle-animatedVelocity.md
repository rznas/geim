<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.Particle-animatedVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The animated velocity of the particle.

You can use animated velocity for effects that are not based on physics, but are instead based on creating a specific velocity over time. Modules such as Noise and VelocityOverLifetime use this type of velocity. This module does not store this velocity across frames, because modules that use this value calculate a new velocity value each frame.

ParticleSystemRenderer also uses animated velocity if *Render Mode* is set to ParticleSystemRenderMode.Stretch.

Additional resources: ParticleSystem.Particle.velocity, ParticleSystem.Particle.totalVelocity.
