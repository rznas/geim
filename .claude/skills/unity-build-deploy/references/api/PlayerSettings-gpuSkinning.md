<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-gpuSkinning.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Marked for deprecation in the future. Use PlayerSettings.meshDeformation instead.

If you change the value of `gpuSkinning`, Unity sets `PlayerSettings.meshDeformation` in the following way:

- If you set `gpuSkinning` to false, Unity sets `PlayerSettings.meshDeformation` to `MeshDeformation.CPU`.
- If you set `gpuSkinning` to true, Unity sets `PlayerSettings.meshDeformation` to `MeshDeformation.GPUBatched`.

See PlayerSettings.meshDeformation.
