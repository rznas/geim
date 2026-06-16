<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchDrawCommandFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Rendering options for the BatchDrawCommand struct.

.

### Properties

| Property | Description |
| --- | --- |
| None | This draw command does not have any special settings. |
| FlipWinding | Unity reverses the triangle winding in this draw command. Usage example: the transform has a negative scale. |
| HasMotion | The draw command renders per-object motion vectors. |
| IsLightMapped | The draw command uses light maps. Light maps might not work correctly unless this flag is set when a draw command uses them. |
| HasSortingPosition | Instances in the draw command have explicit world space sorting positions in the instanceSortingPositions array. Unity uses those sorting positions for depth sorting. |
| LODCrossFadeKeyword | The draw command has LOD_FADE_CROSSFADE keyword enabled. |
| LODCrossFadeValuePacked | The draw command has instances that have an 8-bit crossfade dither factor in the highest bits of their visible instance index. |
| LODCrossFade | The draw command has both LOD_FADE_CROSSFADE keyword enabled and has instances that have an 8-bit crossfade dither factor in the highest bits of their visible instance index. |
| UseLegacyLightmapsKeyword | The draw command has USE_LEGACY_LIGHTMAPS keyword enabled. When this flag is set, BatchDrawCommand.lightmapIndex is used to determine batching. |
