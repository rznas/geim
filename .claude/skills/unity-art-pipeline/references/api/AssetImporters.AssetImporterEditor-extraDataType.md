<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImporterEditor-extraDataType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Override this property to return a type that inherits from ScriptableObject. This makes the AssetImporterEditor aware of serialized data outside of the Importer, allowing it to handle multi-selection and Apply/Revert button states.

When this property is set, the AssetImporterEditor creates an instance of this type for each Editor.targets during Inspector initialization. This should only be used to manage data that is serialized as part of the asset itself. Refer to AssetImporterEditor for an example.
