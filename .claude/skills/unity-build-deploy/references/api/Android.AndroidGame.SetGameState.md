<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidGame.SetGameState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| isLoading | Whether the game is in the loading state. |
| gameState | AndroidGameState state. |
| label | Developer supplied custom value, e.g. for the current level. |
| quality | Developer supplied custom value, e.g. for the current quality level. |

### Description

Calls [setGameState()](https://developer.android.com/reference/android/app/GameManager#setGameState(android.app.GameState)) in the Android application to specify the loading status. Requires API level 33 (Android 13).

When target device does not support the required API level, no action is taken.
