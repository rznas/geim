<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObjectUtility.EnsureUniqueNameForSibling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| self | The GameObject whose name you want to ensure is unique. |

### Description

You can use this method *after* parenting one GameObject to another to ensure the child GameObject has a unique name compared to its siblings in the hierarchy.

If the GameObject already has a unique name compared to its siblings, its name will remain unchanged. If the GameObject has the same name as one of its siblings, Unity will rename it to a unique name by using an incremental number after the GameObject’s current name. This is useful when trying to avoid duplicate naming.

Additional resources: GameObjectUtility.GetUniqueNameForSibling, ObjectNames.GetUniqueName.
