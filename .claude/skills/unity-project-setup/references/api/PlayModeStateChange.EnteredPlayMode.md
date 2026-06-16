<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayModeStateChange.EnteredPlayMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Occurs during the next update of the Editor application if it is in play mode and was previously in edit mode.

In this condition both EditorApplication.isPlaying and EditorApplication.isPlayingOrWillChangePlaymode are `true`.

Because this event is synchronized with the editor application's update loop, it may occur after the game's update loop has already executed one or more times.
