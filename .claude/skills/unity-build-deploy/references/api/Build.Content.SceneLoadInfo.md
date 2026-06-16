<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.SceneLoadInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Container for holding preload information for a given serialized Scene in an AssetBundle.

Note: this class and its members exist to provide low-level support for the **Scriptable Build Pipeline** package. This is intended for internal use only; use the Scriptable Build Pipeline package to implement a fully featured build pipeline. You can install this via the Unity Package Manager.

### Properties

| Property | Description |
| --- | --- |
| address | Friendly name used to load the built Scene from an asset bundle. |
| asset | GUID for the given Scene. |
| internalName | Internal name used to load the built Scene from an asset bundle. |

### Constructors

| Constructor | Description |
| --- | --- |
| SceneLoadInfo | Default constructor for an empty SceneLoadInfo. |
