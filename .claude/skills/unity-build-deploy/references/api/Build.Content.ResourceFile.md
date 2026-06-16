<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.ResourceFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Details about a specific file written by the ContentBuildInterface.WriteSerializedFile or ContentBuildInterface.WriteSceneSerializedFile APIs.

Note: this struct and its members exist to provide low-level support for the **Scriptable Build Pipeline** package. This is intended for internal use only; use the Scriptable Build Pipeline package to implement a fully featured build pipeline. You can install this via the Unity Package Manager.

### Properties

| Property | Description |
| --- | --- |
| fileAlias | Internal name used by the loading system for a resource file. |
| fileName | Path to the resource file on disk. |
| serializedFile | Bool to determine if this resource file represents serialized Unity objects (serialized file) or binary resource data. |
