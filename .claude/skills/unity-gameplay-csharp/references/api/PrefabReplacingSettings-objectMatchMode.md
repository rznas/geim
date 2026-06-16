<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PrefabReplacingSettings-objectMatchMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this property to control if GameObjects and Components should be matched up when replacing the Prefab Asset of an Prefab instance.

Using ObjectMatchMode.ByName will retain references and added objects if names match up. Note that the hierarchy of GameObjects are ignored and only the GameObject name is used for matching. Only if a GameObject have the same name and Transform type is found in both the new Prefab Asset and in the Prefab instance then they are matched up. Components have their GameObject name prefixed to their type name for the final name matching. If the name is found more than once in the Prefab Asset or in the instance then the match cannot be performed; the name must be unique in each GameObject hierarchy.
