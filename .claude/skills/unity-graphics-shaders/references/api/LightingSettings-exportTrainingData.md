<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightingSettings-exportTrainingData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether the Progressive Lightmapper exports machine learning training data to the Project folder when it performs the bake. ( Editor only).

When this is set to `true`, the Progressive Lightmapper exports separate data for direct lighting, indirect lighting, directionality, Ambient Occlusion, Texel Validity, normals, positions, albedo, emission, a coverage mask, and the final lightmap. This data is useful when training machine learning (ML) networks When this is set to `false`, the Progressive Lightmapper does not export this data.

The direct and indirect textures are exported before filtering, but after markup of invalid texels. The lightmap and directionality are exported after filtering and compositing. Ambient Occlusion exports with an exponent of 1. It does not take the indirect/direct exponent into account. To be able to export valid data for Directionality and Ambient Occlusion, they must first be enabled.

Normals and positions are exported in both object space (os) and world space (ws). Normals are normalized, positions are not. Some textures are marked as "supersampled". This means that the Editor exports the values without downsampling them, if they have a supersampling multiplier that is higher than 1.

All textures have the coverage mask as their alpha channel.

To change the name of the export folder, see trainingDataDestination.

Additional resources: Lighting Settings Asset, trainingDataDestination.
