<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.GraphDatabase.LoadGraphForImporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | The path to the graph asset file. |

### Returns

**T** A new instance of the graph read directly from disk.

### Description

Loads a fresh instance of the Graph of type `T` from disk for use in the asset import pipeline.

Use this method to load a Graph instance from disk without referencing the in-memory version. This ensures consistent, deterministic behavior required by Unity’s asset import pipeline. This method is intended for importers, it bypasses any in-memory modifications that may have occurred. Unlike LoadGraph_1, this method always returns a clean copy of the graph as it exists on disk.
