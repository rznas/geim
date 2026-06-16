<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EnterPlayModeOptions.DisableSceneReload.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When Scene Reload is disabled, Unity resets the Scene state and emulates all of the required post-processor calls when entering Play Mode, instead of reloading the whole Scene. This makes it quicker to switch to Play Mode, because there's no need to destroy, create and awaken all the Scene objects, and serialize and deserialize the Scene from disk.
