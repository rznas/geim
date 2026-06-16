<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application.LoadLevelAdditive.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Loads a level additively.

Unlike LoadLevel, LoadLevelAdditive does not destroy objects in the current level. Objects from the new level are added to the current Scene. This is useful for creating continuous virtual worlds, where more content is loaded in as you walk through the environment.

LoadLevelAdditive adds new objects in the beginning of the next frame at the Inititialization stage prior to the first MonoBehaviour.FixedUpdate call (refer to Order of execution for event functions).

Additional resources: AsyncOperation, Application.backgroundLoadingPriority, Application.LoadLevelAdditiveAsync, Application.LoadLevel, Application.LoadLevelAsync.
