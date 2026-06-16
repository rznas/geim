<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application.LoadLevelAdditiveAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Loads the level additively and asynchronously in the background.

Unlike LoadLevelAsync, LoadLevelAdditiveAsync does not destroy objects in the current level. Objects from the new level are added to the current Scene. This is useful for creating continuous virtual worlds, where more content is loaded in as you walk through the environment.

Unity will completely load all assets and all objects in the Scene in a background loading thread. This allows you to create a completely streaming world where you constantly load and unload different parts of the world based on the player position, without any hiccups in game play.

AsyncOperation.isDone variable from the resulting AsyncOperation can be used to query if the level load has completed. The result of a LoadLevelAdditiveAsync can also be used to **yield** in a coroutine.

When building a player Unity automatically optimizes assets in such a way that LoadLevelAdditiveAsync will load them from disk linearly to avoid seek times. Note that background loading performance in the Unity Editor is much lower than in the standalone build. In the Editor you might also get more loading hiccups than in the player.

Refer to Order of execution for event functions for more information regarding the calling sequence once a level is loaded.

Additional resources: AsyncOperation, Application.backgroundLoadingPriority, Application.LoadLevelAdditive, Application.LoadLevel, Application.LoadLevelAsync.
