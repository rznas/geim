<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ConvertToPrefabInstanceSettings-objectMatchMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this property to control how GameObjects and Components are matched up or not when converting a plain GameObject to a Prefab instance.

The root GameObject and its components will always be matched up regardless of the ObjectMatchMode so a reference to the root GameObject will always be retained regardless of ObjectMatchMode. Use ObjectMatchMode.ByHierarchy which will retain references if GameObjects and Components are matched up using their full hierarchy path. In this mode you can use componentsNotMatchedBecomesOverride and gameObjectsNotMatchedBecomesOverride to control what happens with objects that are not matched up. Alternatively use ObjectMatchMode.ByName will retain references if individual GameObject names matches up. Note that the hierarchy of GameObjects are ignored and only the GameObject name is used for matching. Only if a GameObject have the same name and same Transform type as in the used Prefab Asset then they are matched up. Components have their GameObject name prefixed to their type name for the final name matching. If the name is found more than once in the Prefab Asset or in the instance then the match cannot be performed; the name must be unique in each GameObject hierarchy.
