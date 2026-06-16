<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.GraphDatabase.CreateGraph.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | The relative path for the new asset (e.g., "Assets/Graphs/MyGraph.mygraph"). |

### Returns

**T** The created graph instance.

### Description

Creates a new graph asset of type `T` at the specified file path.

Use this method to programmatically create a new graph asset of type `T` at a specific location in the project. The path must be relative to the Unity project folder and must include a valid file extension recognized by the graph importer. If an asset already exists at the specified , this method overwrites it. This method works similarly to UnityEditor.AssetDatabase.CreateAsset but is scoped for Graph assets.
