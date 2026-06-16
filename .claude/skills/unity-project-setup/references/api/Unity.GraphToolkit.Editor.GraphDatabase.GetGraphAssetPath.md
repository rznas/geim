<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.GraphDatabase.GetGraphAssetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| graph | The graph whose asset path you want to retrieve. |

### Returns

**string** The asset's file path.

### Description

Retrieves the file path of the asset associated with the specified Graph.

Use this method to get the relative file path of the graph asset within the Unity project (for example, `"Assets/Graphs/MyGraph.mygraph"`). Do not use `AssetDatabase.GetAssetPath` with graph objects, as it will not return the correct result.
