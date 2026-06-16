<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.TextureGenerationSettings-enablePostProcessor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When set to true, the AssetPostprocessor hooks will be called during texture generation. The following will hold for any AssetPostprocessors triggered through TextureGenerator.GenerateTexture - When the postprocessor is invoked AssetPostprocessor.assetPath will be set to the assetPath value in this structure. - The value of AssetPostprocessor.context will be set to null. - Only OnPostprocessTexture, OnPostprocessCubemap, ... is called. The OnPreprocessTexture functions are not called.
