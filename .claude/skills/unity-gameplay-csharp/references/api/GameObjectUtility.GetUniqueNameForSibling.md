<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObjectUtility.GetUniqueNameForSibling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| parent | Target parent for a new GameObject. Null means root level. |
| name | Requested name for a new GameObject. |

### Returns

**string** Unique name for a new GameObject.

### Description

You can use this method before instantiating a new sibling, or before parenting one GameObject to another, to ensure the new child GameObject has a unique name compared to its siblings in the hierarchy.

To use this method, you must provide a "target parent", and a "requested name". The method uses an incremental numeric suffix appended to the name to avoid duplicate names.

If the target parent that you specify does *not* already have a child with the requested name that you specify, the method will return the requested name. If the target parent *does* have a child object matching the requested name, the method will add an incremental number after the requested name until it finds one that is unique. This is useful when trying to avoid duplicate naming.

Note: You should use this method *before* the GameObject becomes a child of the target parent. If you use this method *after* the GameObject is already a child of the target parent, it will detect its own name among the siblings as a conflict! If you want to perform the check after the GameObject is a child of the target parent, you can use GameObjectUtility.EnsureUniqueNameForSibling instead.

Additional resources: GameObjectUtility.EnsureUniqueNameForSibling, ObjectNames.GetUniqueName.
