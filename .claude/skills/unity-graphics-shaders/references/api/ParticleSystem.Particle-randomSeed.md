<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.Particle-randomSeed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The random seed of the particle.

Each particle has its own seed, in order to produce deterministic results during simulation. For example, if a particle uses a random color selected from a gradient, the seed ensures that the same color is generated on each frame.

You may also use this seed when generating per-particle random numbers, by passing it to Random.InitState.
