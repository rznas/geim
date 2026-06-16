<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemSubEmitterProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The properties of sub-emitter particles.

### Properties

| Property | Description |
| --- | --- |
| InheritNothing | When spawning new particles, do not inherit any properties from the parent particles. |
| InheritEverything | When spawning new particles, inherit all available properties from the parent particles. |
| InheritColor | When spawning new particles, multiply the start color by the color of the parent particles. |
| InheritSize | When spawning new particles, multiply the start size by the size of the parent particles. |
| InheritRotation | When spawning new particles, add the start rotation to the rotation of the parent particles. |
| InheritLifetime | New particles will have a shorter lifespan, the closer their parent particles are to death. |
| InheritDuration | When spawning new particles, use the duration and age properties from the parent system, when sampling MainModule curves in the Sub-Emitter. |
