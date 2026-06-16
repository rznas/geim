<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightingSettings-maxBounces.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stores the maximum number of bounces the Progressive Lightmapper computes for indirect lighting. (Editor only)

To reduce the computational load and improve performance during bakes, the Progressive Lightmapper terminates light paths that contribute little to the appearance of the Scene lighting. Light paths are weighted so that those with low intensity are more likely to be terminated first. This technique is known as Russian Roulette.
 
 `maxBounces` determines the maximum number of bounces for an indirect light path.
 
 Default value: 2. Range: 0–100. The higher the value, the longer the bake time. Values of up to 10 are suitable for most Scenes. Values higher than 10 might lead to significantly longer bake times.
 
 To disable the Russian Roulette technique, set `maxBounces` to the same value as LightmapSettings.minBounces.
 
 When Unity serializes this `LightingSettings` object as a Lighting Settings Asset, this property corresponds to the **Max Bounces** property in the Lighting Settings Asset Inspector.
 
 Additional resources: Lighting Settings Asset, LightmapSettings.minBounces.
