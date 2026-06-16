<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EntityId.CompareTo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The EntityId to compare against. |

### Returns

**int** A negative value if this EntityId is less than the other, zero if they are equal, or a positive value if this EntityId is greater.

### Description

Compares this EntityId to another EntityId.

The ordering of `EntityId` values is arbitrary and does not reflect creation order or any other meaningful property. Do not rely on the comparison result for anything other than establishing a consistent ordering for data structures that require it (such as sorted collections).
