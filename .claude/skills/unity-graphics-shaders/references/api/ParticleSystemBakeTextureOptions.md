<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemBakeTextureOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Configure how a Particle System is baked into a texture.

### Properties

| Property | Description |
| --- | --- |
| BakeRotationAndScale | Bake the Transform rotation and scale into the texture. |
| BakePosition | Bake the Transform position into the texture. |
| PerVertex | Bake each vertex of each particle (i.e. 4 vertices per billboard). |
| PerParticle | Only bake each particle, instead of each vertex of each particle (i.e. 1 vertex per billboard). |
| IncludeParticleIndices | Instead of only baking triangle indices into the indices texture, bake a 2 channel index texture containing triangle indices and particle indices. |
| Default | The default baking options. |
