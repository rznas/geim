<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MobileTextureSubtarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Compressed texture format for target build platform.

Additional resources: EditorUserBuildSettings.androidBuildSubtarget.

### Properties

| Property | Description |
| --- | --- |
| Generic | Don't override texture compression. |
| DXT | S3 texture compression. Supported on devices with NVidia Tegra, Vivante and Intel GPUs. |
| ETC | ETC1 texture compression (or ETC2 for textures with alpha). ETC1 is supported by all devices. ETC2 is available on devices which support OpenGL ES 3.0. |
| ETC2 | ETC2 texture compression. Available on devices which support OpenGL ES 3.0. |
| ASTC | ASTC texture compression. |
