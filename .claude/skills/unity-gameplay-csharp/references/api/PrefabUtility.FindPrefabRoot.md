<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabUtility.FindPrefabRoot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| source | The object to check. |

### Returns

**GameObject** The Prefab root.

### Description

Retrieves the root GameObject of the Prefab that the supplied GameObject is part of.

This method checks if the object is part of a Prefab (either a Prefab instance or a Prefab Asset) and if so, returns the root GameObject of the Prefab.

This method is used internally in the Editor to help the user select the correct object when GameObjects are clicked in the Scene view.
