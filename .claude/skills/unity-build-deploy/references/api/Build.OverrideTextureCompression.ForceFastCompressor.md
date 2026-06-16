<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.OverrideTextureCompression.ForceFastCompressor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Import textures with fast, but lower quality, texture compression.

You can set EditorUserBuildSettings.overrideTextureCompression to `ForceFastCompressor` to import all compressed textures with a faster (but possibly lower quality) texture compression. This is the same as if all the textures had "Compressor Quality: Fast" option set in their per-platform import settings.

This setting is mostly useful for local development, to speed up texture importing or a platform switch process. "Fast" compressor in particular only affects the texture pixels: the compression artifacts are in some cases more visible, but the import process can be up to 10 times faster.

Additional resources: EditorUserBuildSettings.overrideTextureCompression, Texture Importer, command line arguments.
