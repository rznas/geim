<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GlobalObjectId.CompareTo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The other GlobalObjectId to compare with this instance. |

### Returns

**int** Returns an integer that represents the relative sort order positions of the current instance and the other `GlobalObjectId`. Returns a negative integer if this instance precedes `other`. Returns a positive integer if this instance follows `other`. Returns zero if this instance and `other` have the same position in the sort order.

### Description

Compares this unique object identifier with another to determine their relative positions in the sort order.

The sort order for comparison is GlobalObjectId.assetGUID, GlobalObjectId.targetObjectId, GlobalObjectId.targetPrefabId, then GlobalObjectId.identifierType.

**Note**: To check if two instances of `GlobalObjectId` are equivalent, use GlobalObjectId.Equals instead.
