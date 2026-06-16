<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpeedTreeImporter-enableSettingOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets and sets an array of booleans to customize importer settings for a specific LOD.

The number of elements in this array must match the number of LODs in the model.

The following are the per-LOD settings:

- `enableSettingOverride`
- SpeedTreeImporter.LODHeights
- SpeedTreeImporter.castShadows
- SpeedTreeImporter.receiveShadows
- SpeedTreeImporter.useLightProbes
- SpeedTreeImporter.enableBump
- SpeedTreeImporter.enableHue
- SpeedTreeImporter.enableSubsurface
- SpeedTreeImporter.windQualities

When a boolean in this array is set to `true`, SpeedTreeImporter generates an additional material with the specified per-LOD settings and the corresponding LOD index. You can use these settings to fine-tune the performance of the application, but consider that additional material generation comes with certain CPU and GPU performance trade-offs. It is recommended to use settings override together with performance profiling tools to ensure meaningful performance gains.

When the setting override for an LOD is not enabled, the material and mesh properties of the imported SpeedTree asset have the following settings:

- SpeedTreeImporter.castShadowsByDefault
- SpeedTreeImporter.receiveShadowsByDefault
- SpeedTreeImporter.useLightProbesByDefault
- SpeedTreeImporter.enableBumpByDefault
- SpeedTreeImporter.enableHueByDefault
- SpeedTreeImporter.enableSubsurfaceByDefault
- SpeedTreeImporter.selectedWindQuality

In other words, the `enableSettingOverride` overrides the '*ByDefault' settings for a specific LOD level with the values in the per-LOD settings.
