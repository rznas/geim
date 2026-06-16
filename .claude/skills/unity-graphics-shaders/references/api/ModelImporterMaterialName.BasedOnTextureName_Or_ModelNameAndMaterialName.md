<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporterMaterialName.BasedOnTextureName_Or_ModelNameAndMaterialName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

<textureName>.mat or <modelFileName>-<materialName>.mat material name.

Name materials <textureName>.mat (i.e. diffuse texture name of imported material) when searching for existing or creating new materials. If material doesn't have a texture or texture doesn't exist in Unity project folder in one of Textures folders, then material will be named <modelFileName>-<materialName>.mat instead. This option has behaviour compatible with Unity 3.4 and earlier versions (i.e. same behaviour as ModelImporterGenerateMaterials.PerTexture). Additional resources: ModelImporter.materialName.
