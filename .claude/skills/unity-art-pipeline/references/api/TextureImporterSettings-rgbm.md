<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporterSettings-rgbm.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

RGBM encoding mode for HDR textures in TextureImporter.

HDR texture data (i.e. coming from .exr or .hdr files) can be encoded into RGBM format by Unity. This setting controls how the encoding is done. Default is "Auto", which means do RGBM encoding when source data is HDR.

RGBM encoding packs [0;8] range into [0;1] with multiplier stored in the alpha channel. Final value is RGB*A*8.

Additional resources: TextureImporterRGBMMode.
