<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ClipboardUtility-canDuplicateGameObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Optional filtering functions invoked to determine if a GameObject can be duplicated before any action is taken.

All registered delegates of canDuplicateGameObject will be evaluated and must return true for a GameObject to be duplicated. Selection.gameObjects will be updated with the GameObjects that successfully passed the filtering functions.

Subscribe to the rejectedGameObjects event to receive a callback, providing an array of GameObjects that failed one or more of the filtering functions.
