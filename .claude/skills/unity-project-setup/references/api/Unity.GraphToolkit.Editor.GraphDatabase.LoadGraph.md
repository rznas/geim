<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.GraphDatabase.LoadGraph.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | The relative path to the graph asset (for example, "Assets/Graphs/MyGraph.mygraph"). |

### Returns

**T** The loaded graph instance, or `null` if no matching graph is found.

### Description

Loads a Graph of type `T` from the asset at the specified path.

Use this method to load a graph asset of type `T` from a given asset path. The must be relative to the Unity project folder. This method returns the graph object currently loaded in memory, which might differ from the version on disk if the asset was modified or opened in an editor. This behavior is similar to UnityEditor.AssetDatabase.LoadAssetAtPath. For deterministic loading during import, use LoadGraphForImporter_1 instead.
