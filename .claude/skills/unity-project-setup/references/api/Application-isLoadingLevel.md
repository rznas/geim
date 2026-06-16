<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-isLoadingLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is some level being loaded? (Read Only) (Obsolete).

Obsolete - please use the newer SceneManager class to handle all Scene loading operations.

LoadLevel and LoadLevelAdditive don't happen immediately - a new level is loaded after the current game frame finishes. isLoadingLevel returns `true` if a level load was requested this frame already.

Additional resources: LoadLevel, LoadLevelAdditive.
