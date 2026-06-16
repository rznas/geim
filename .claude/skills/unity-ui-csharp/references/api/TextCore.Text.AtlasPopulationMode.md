<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextCore.Text.AtlasPopulationMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options to specify the atlas population mode, which defines the type of font asset.

### Properties

| Property | Description |
| --- | --- |
| Static | Static font assets offer the best performance of any font asset type. You create and pre-populate them in the Editor.They cannot be modified at runtime. A static font asset is standalone. Its source font file is not included in builds. |
| Dynamic | Dynamic font assets can be populated at runtime, but incur a higher performance overhead than static font assets. A dynamic font asset depends on its source font file, which is included in builds. |
| DynamicOS | Dynamic OS font assets provide the same functionality and performance as dynamic font assets. In the Editor, a Dynamic OS font asset depends on its source font file. For a Dynamic OS font asset to work in a build, the target platform must contain its source font file. |
