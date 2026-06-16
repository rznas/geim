<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.OverrideTextureCompression.ForceUncompressed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Import textures with texture compression off.

You can set EditorUserBuildSettings.overrideTextureCompression to `ForceUncompressed` to import all textures into uncompressed texture formats. This is the same as if all the textures had "Compression: None" option set in their import settings.

This setting is mostly useful for local development, to speed up texture importing or a platform switch process. Some compressed texture formats are slow to compress, and for local development you might want to skip that. Note however that uncompressed textures do take up more memory and might be slower for GPU to render with.

Additional resources: EditorUserBuildSettings.overrideTextureCompression, Texture Importer, command line arguments.
