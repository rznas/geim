<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableGraph.IsPlaying.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** A boolean indicating if the graph is playing or not.

### Description

Indicates that a graph is presently running.

Return true if PlayableGraph.Play or has been called on the graph. Returns false if PlayableGraph.Stop has been called on the graph. Note that calling PlayableGraph.Evaluate has no impact on the IsPlaying state.
