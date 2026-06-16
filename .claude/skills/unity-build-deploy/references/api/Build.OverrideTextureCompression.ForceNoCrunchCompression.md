<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.OverrideTextureCompression.ForceNoCrunchCompression.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Import textures with crunch compression disabled.

You can set EditorUserBuildSettings.overrideTextureCompression to `ForceNoCrunchCompression` to import all textures with Crunch compression disabled. This is the same as if all the textures had their Crunch compression option disabled in their per-platform import settings.

This setting is mostly useful for local development as Crunch compressing textures can take a long time, disabling it can speed up texture importing or a platform switch process significantly.

Note: `ForceFastCompressor` also disables Crunch compression. 

Additional resources: EditorUserBuildSettings.overrideTextureCompression, Texture Importer, command line arguments.
