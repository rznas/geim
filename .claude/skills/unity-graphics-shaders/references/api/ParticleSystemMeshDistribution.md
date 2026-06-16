<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemMeshDistribution.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets which method Unity uses to randomly assign Meshes to particles.

The ParticleSystemRenderer uses this to determine how often to randomly select each Mesh.

### Properties

| Property | Description |
| --- | --- |
| UniformRandom | Use a uniform random value to give each Mesh an equal chance to appear. |
| NonUniformRandom | Use per-Mesh weights to make some Meshes appear more often than others. A higher weight value increases the chance of choosing the associated Mesh. |
