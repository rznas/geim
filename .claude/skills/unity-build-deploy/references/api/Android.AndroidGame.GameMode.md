<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidGame.GameMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Calls [getGameMode()](https://developer.android.com/reference/android/app/GameManager#getGameMode()) in the Android application to retrieve the user selected game mode for the application and returns AndroidGameMode. Requires API level 31 (Android 12). (Read Only)

When target device does not support the required API level, AndroidGameMode.Unsupported is returned (value of 0).
