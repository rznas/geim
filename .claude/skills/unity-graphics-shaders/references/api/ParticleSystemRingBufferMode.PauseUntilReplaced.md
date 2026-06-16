<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRingBufferMode.PauseUntilReplaced.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Particle ages pause at the end of their lifetime until they need to be removed. Particles are removed when creating new particles would exceed the Max Particles property.

If they reach the end of the lifetime before being replaced, they remain paused at their final lifetime value. This means that any lifetime based properties, such as curves, use the final value on the curve.
