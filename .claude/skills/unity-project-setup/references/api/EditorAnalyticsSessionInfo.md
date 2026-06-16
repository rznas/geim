<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorAnalyticsSessionInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides access to Editor Analytics session information.

This class contains static methods for looking up session information collected by the Editor Analytics system.

### Static Properties

| Property | Description |
| --- | --- |
| activeElapsedTime | The total time, in milliseconds, that the user interacted with the Editor since the beginning of the current session. |
| elapsedTime | The length of the current session, in milliseconds. |
| focusedElapsedTime | The total time, in milliseconds, that the Editor has been in focus during the current session. |
| id | A random, unique GUID identifying the current Editor session. |
| playbackElapsedTime | The total time, in milliseconds, that the Editor has been in playmode during the current session. |
| sessionCount | The number of Editor sessions that have occurred since the current instance of the Unity Editor was installed. |
| userId | A random GUID uniquely identifying an Editor installation. |
