<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Resources.EntityIdsToObjectList.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| entityIds | IDs of Object instances. |
| objects | List of resolved object references, **entityIds** and **objects** will be of the same length and in the same order, the list will be resized if needed. Missing objects will be null. |

### Description

Translates an array of entity IDs to a list of Object references.

This is similar to EntityIdToObject but resolves several IDs at once.
