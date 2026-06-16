<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-isPlayingOrWillChangePlaymode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Editor application state which is true only when the Editor is currently in or about to enter Play mode. (Read Only)

The value is `true` when the Editor is either in Play mode or will enter Play mode after finishing in-progress tasks such as compiling scripts. The value is `false` when the Editor is not in Play mode or will exit Play mode after finishing in-progress tasks.

**Note**: Despite its name, `isPlayingOrWillChangePlaymode` is not `true` every time the Play mode state will change, but specifically when it will change from Edit mode to Play mode. Subscribe to EditorApplication.playModeStateChanged to capture different changes in Play mode state, including exit from Play mode.

Additional resources: isPlaying, isCompiling.
