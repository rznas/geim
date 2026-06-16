<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemTrailTextureMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Choose how textures are applied to Particle Trails.

### Properties

| Property | Description |
| --- | --- |
| Stretch | Map the texture once along the entire length of the trail. |
| Tile | Repeat the texture along the trail. To set the tiling rate, use Material.SetTextureScale. |
| DistributePerSegment | Map the texture once along the entire length of the trail, assuming all vertices are evenly spaced. |
| RepeatPerSegment | Repeat the texture along the trail, repeating at a rate of once per trail segment. To adjust the tiling rate, use Material.SetTextureScale. |
| Static | Trails do not change the texture coordinates of existing points when they add or remove points. |
