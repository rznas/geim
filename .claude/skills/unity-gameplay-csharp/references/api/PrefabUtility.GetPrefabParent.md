<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.GetPrefabParent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the parent asset object of `source`, or null if it can't be found.

Use this function to get a Prefab Asset object the `source` was instantiated from. This also returns the Prefab parent if the Prefab has become disconnected, which can then be used to reconnect the Prefab.
