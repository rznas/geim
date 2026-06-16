<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.AssetLoadInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Container for holding preload information for a given serialized Asset.

Note: this class and its members exist to provide low-level support for the **Scriptable Build Pipeline** package. This is intended for internal use only; use the Scriptable Build Pipeline package to implement a fully featured build pipeline. You can install this via the Unity Package Manager.

### Properties

| Property | Description |
| --- | --- |
| address | Friendly name used to load the built asset. |
| asset | GUID for the given asset. |
| includedObjects | List of objects that an asset contains in its source file. |
| referencedObjects | List of objects that an asset references. |

### Constructors

| Constructor | Description |
| --- | --- |
| AssetLoadInfo | Default constructor for an empty AssetLoadInfo. |
