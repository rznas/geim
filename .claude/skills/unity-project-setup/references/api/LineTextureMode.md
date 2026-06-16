<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LineTextureMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Choose how textures are applied to Lines and Trails.

### Properties

| Property | Description |
| --- | --- |
| Stretch | Map the texture once along the entire length of the line. |
| Tile | Repeat the texture along the line, based on its length in world units. To set the tiling rate, use Material.SetTextureScale. |
| DistributePerSegment | Map the texture once along the entire length of the line, assuming all vertices are evenly spaced. |
| RepeatPerSegment | Repeat the texture along the line, repeating at a rate of once per line segment. To adjust the tiling rate, use Material.SetTextureScale. |
| Static | Trails do not change the texture coordinates of existing points when they add or remove points. |
