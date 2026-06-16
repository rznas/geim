<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableDirector.RebuildGraph.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Discards the existing PlayableGraph and creates a new instance.

When the PlayableDirector starts playback, it creates a PlayableGraph from the assigned PlayableAsset. Use this method when the assigned PlayableAsset has changed and it is necessary to show the changes during playback.

RebuildGraph attempts to maintain the current playback state. For example, if the PlayableDirector has not started playback, RebuildGraph constructs a new PlayableGraph and does not start playback. If the PlayableDirector is playing an existing graph, RebuildGraph stops playback, destroys the graph, creates a new instance of the graph, and resumes playback.
