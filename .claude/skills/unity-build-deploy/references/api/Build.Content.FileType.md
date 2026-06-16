<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.FileType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enum description of the type of file an object comes from.

Note: this enum and its values exist to provide low-level support for the **Scriptable Build Pipeline** package. This is intended for internal use only; use the Scriptable Build Pipeline package to implement a fully featured build pipeline. You can install this via the Unity Package Manager.

### Properties

| Property | Description |
| --- | --- |
| NonAssetType | Object is contained in file not currently tracked by the AssetDatabase. |
| DeprecatedCachedAssetType | Object is contained in a very old format. Currently unused. |
| SerializedAssetType | Object is contained in a standard asset file type located in the Assets folder. |
| MetaAssetType | Object is contained in the imported asset meta data located in the Library folder. |
