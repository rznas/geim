<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.InheritVelocityModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Inherit Velocity Module controls how the velocity of the emitter is transferred to the particles as they are emitted.

NOTE: The inherit velocity module only has an effect if the Particle System is set to simulate in world space. If the system is simulating in local space, this module is ignored. Additional resources: ParticleSystem, ParticleSystem.inheritVelocity.

### Properties

| Property | Description |
| --- | --- |
| curve | Curve to define how much of the emitter velocity the system applies during the lifetime of a particle. |
| curveMultiplier | Change the curve multiplier. |
| enabled | Specifies whether the InheritVelocityModule is enabled or disabled. |
| mode | Specifies how to apply emitter velocity to particles. |
