<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableBehaviour.OnGraphStart.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable that owns the current PlayableBehaviour. |

### Description

This function is called when the PlayableGraph that owns this PlayableBehaviour starts.

OnGraphStart is called when the graph starts playing, or on the first invocation of PlayableGraph.Evaluate. Each call to OnGraphStart is paired with OnGraphStop.
