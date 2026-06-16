<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidGameState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for the available [game states](https://developer.android.com/reference/android/app/GameState#constants_1) that you can pass to AndroidGame.SetGameState or you can set as a current game state mode to be used for Automated game state hinting in Unity using AndroidGame.Automatic.SetGameState method.

### Properties

| Property | Description |
| --- | --- |
| Unknown | Unknown refers to the default game state. |
| None | None indicates that the game is not in active play. |
| GamePlayInterruptible | Interruptible game state, which indicates that the game is in active, but interruptible, gameplay. |
| GamePlayUninterruptible | Uninterruptible game state, which indicates that the game is in active user play mode, which is real-time and cannot be interrupted |
| Content | Content game state, which indicates that the current content shown is not gameplay related. |
