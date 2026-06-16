<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.IPlayableAsset.CreatePlayable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| graph | The graph to inject playables into. |
| owner | The game object which initiated the build. |

### Returns

**Playable** The playable injected into the graph, or the root playable if multiple playables are injected.

### Description

Implement this method to have your asset inject playables into the given graph.
