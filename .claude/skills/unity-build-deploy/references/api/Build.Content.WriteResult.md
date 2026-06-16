<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.WriteResult.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct containing the results from the ContentBuildPipeline.WriteSerialziedFile and ContentBuildPipeline.WriteSceneSerialziedFile APIs.

Note: this struct and its members exist to provide low-level support for the **Scriptable Build Pipeline** package. This is intended for internal use only; use the Scriptable Build Pipeline package to implement a fully featured build pipeline. You can install this via the Unity Package Manager.

### Properties

| Property | Description |
| --- | --- |
| externalFileReferences | The collection of externally referenced files. |
| includedSerializeReferenceFQN | SerializeReference instances fully qualified name which were included in the serialized file. |
| includedTypes | Types that were included in the serialized file. |
| resourceFiles | Collection of files written by the ContentBuildInterface.WriteSerializedFile or ContentBuildInterface.WriteSceneSerializedFile APIs. |
| serializedObjects | Collection of objects written to the serialized file. |
