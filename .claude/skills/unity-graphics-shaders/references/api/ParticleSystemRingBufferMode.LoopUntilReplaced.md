<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRingBufferMode.LoopUntilReplaced.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Particle ages loop until they need to be removed. Particles are removed when creating new particles would exceed the Max Particles property.

When using this mode, particle ages will loop in the range specified by ParticleSystem.MainModule.ringBufferLoopRange. When they need to be removed, they stop looping, but continue to play until their age reaches their lifetime value. This looping behaviour means that any lifetime based properties, such as curves, repeat the portion of the curve specified by the loop range.
