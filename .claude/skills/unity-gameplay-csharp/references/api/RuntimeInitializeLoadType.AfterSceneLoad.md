<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RuntimeInitializeLoadType.AfterSceneLoad.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Callback invoked when the first scene's objects are loaded into memory and **after** Awake has been called.

At this point active objects can be found with UnityEngine.Object.FindObjectsByType. Before this point the first Scene's objects are considered inactive regardless of their serialized active state.

For more info on ordering see RuntimeInitializeOnLoadMethodAttribute.
