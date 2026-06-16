<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightingSettings-minBounces.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stores the minimum number of bounces the Progressive Lightmapper computes for indirect lighting. (Editor only)

To reduce the computational load and improve performance during bakes, the Progressive Lightmapper terminates light paths that contribute little to the appearance of the Scene lighting. Light paths are weighted so that those with low intensity are more likely to be terminated first. This technique is known as Russian Roulette.
 
 `minBounces` determines the minimum number of bounces for an indirect light path before Unity applies the Russian Roulette technique.
 
 Default value: 2. Range: 0–100. Lower values reduce bake times, but increase lightmap noise. Higher values increase bake times, but reduce lightmap noise.
 
 To disable the Russian Roulette technique, set `minBounces` to the same value as LightmapSettings.maxBounces.
 
 When Unity serializes this `LightingSettings` object as a Lighting Settings Asset, this property corresponds to the **Min Bounces** property in the Lighting Settings Asset Inspector.
 
 Additional resources: Lighting Settings Asset, LightmapSettings.maxBounces.
