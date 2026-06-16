<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableBehaviour.OnGraphStop.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable that owns the current PlayableBehaviour. |

### Description

This function is called when the PlayableGraph that owns this PlayableBehaviour stops.

OnGraphStop is called when Unity stops playing the owning graph, and is guaranteed to always and only be called if OnGraphStart has been called. If the graph has been only been manually evaluated, OnGraphStop will be called prior to destroy.
