<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRingBufferMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Control how particles are removed from the Particle System.

### Properties

| Property | Description |
| --- | --- |
| Disabled | Particles are removed when their age exceeds their lifetime. |
| PauseUntilReplaced | Particle ages pause at the end of their lifetime until they need to be removed. Particles are removed when creating new particles would exceed the Max Particles property. |
| LoopUntilReplaced | Particle ages loop until they need to be removed. Particles are removed when creating new particles would exceed the Max Particles property. |
