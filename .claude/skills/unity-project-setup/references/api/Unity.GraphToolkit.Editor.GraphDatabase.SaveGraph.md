<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.GraphDatabase.SaveGraph.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| graph | The graph to save. |

### Description

Saves the asset of the specified Graph to disk if it has unsaved changes.

Use this method to persist any pending modifications made to a Graph instance. It prevents data loss by ensuring the asset on disk reflects the in-memory graph state. This method is similar to UnityEditor.AssetDatabase.SaveAssetIfDirty and only performs a save if the graph is marked dirty.
