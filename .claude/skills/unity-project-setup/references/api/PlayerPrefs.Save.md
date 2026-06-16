<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerPrefs.Save.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Saves all modified preferences.

Unity saves preferences automatically during OnApplicationQuit(). On the Universal Windows Platform, Unity writes preferences during application suspend. For information on the storage location, see PlayerPrefs.

 **Note**: Since writing the PlayerPrefs can cause hiccups, it is recommended to not call this function during gameplay.
