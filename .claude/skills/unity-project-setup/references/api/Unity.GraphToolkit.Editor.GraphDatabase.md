<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.GraphDatabase.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides functionality needed to access, and perform operations on, graph assets.

The `GraphDatabase` class is similar to Unity's UnityEditor.AssetDatabase, but it is tailored for graph-based tools. Use this class to create, load, and save Graph instances and their associated assets. This API supports typical asset workflows such as creating new graph assets in the Project window, accessing graphs by path or GUID, and ensuring changes to graph data are saved. Use PromptInProjectBrowserToCreateNewAsset_1 to create and name a new asset, CreateGraph_1 to generate an asset file, and LoadGraph_1 to retrieve an existing one. Use SaveGraph to persist graph data changes, and LoadGraphForImporter_1 to load a clean instance during import.

### Static Methods

| Method | Description |
| --- | --- |
| CreateGraph | Creates a new graph asset of type T at the specified file path. |
| GetGraphAssetGUID | Retrieves the globally unique identifier (GUID) for the asset associated with the specified Graph. |
| GetGraphAssetPath | Retrieves the file path of the asset associated with the specified Graph. |
| LoadGraph | Loads a Graph of type T from the asset at the specified path. |
| LoadGraphForImporter | Loads a fresh instance of the Graph of type T from disk for use in the asset import pipeline. |
| PromptInProjectBrowserToCreateNewAsset | Creates a new graph asset and activates the naming field in the Project Browser. |
| SaveGraph | Saves the asset of the specified Graph to disk if it has unsaved changes. |
