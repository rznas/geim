<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Resources.InstanceIDToObjectList.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceIDs | IDs of Object instances. |
| objects | List of resoved object references, **instanceIDs** and **objects** will be of the same length and in the same order, the list will be resized if needed. Missing objects will be null. |

### Description

Translates an array of instance IDs to a list of Object references.

This is similar to InstanceIDToObject but resolves several IDs at once.
