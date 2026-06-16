<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.OverrideTextureCompression.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets which texture compression override to use when importing assets.

This enum is used by EditorUserBuildSettings.overrideTextureCompression. It lets you override the texture compression settings that Unity uses when it imports assets. This is mostly useful for local development, to speed up texture importing or build target switching.

This setting affects all textures in your project, and overrides the import settings for individual textures. For example, if a texture's import settings indicate that a "Normal" compressor quality should be used, but `overrideTextureCompression` is set to OverrideTextureCompression.ForceFastCompressor, the texture will be compressed with "Fast" compressor quality setting.

Overriding the texture compression format can increase the speed of the import process considerably, but it is important to understand the implications.

Using `ForceUncompressed` turns off compression completely. This is the fastest option, as it saves all the time that would be spent compressing textures during import. However, it has a potentially large effect: uncompressed textures use between 4 and 8 times more memory, the build size is larger, and code that expects textures to be in a particular format might no longer work as expected.

Using `ForceFastCompressor` is not as fast as uncompressed, but is up to 10 times faster than using the default compression settings under certain circumstances (most notably for mobile compression formats). It has none of the downsides of forcing uncompressed textures: memory usage stays the same, build size stays the same, and texture formats stay the same. The only downside is that textures might have more compression artifacts.

Using `ForceNoCrunchCompression` disables Crunch compression on all textures. Crunch compression can take a long time, so disabling it means Unity imports textures faster but uses more disk space. This option is most useful for local builds, where iteration time is more important than the size of the build on disk and in memory.

Additional resources: EditorUserBuildSettings.overrideTextureCompression, Texture Importer, command line arguments.

### Properties

| Property | Description |
| --- | --- |
| NoOverride | Do not override texture import compression parameters. |
| ForceUncompressed | Import textures with texture compression off. |
| ForceFastCompressor | Import textures with fast, but lower quality, texture compression. |
| ForceNoCrunchCompression | Import textures with crunch compression disabled. |
