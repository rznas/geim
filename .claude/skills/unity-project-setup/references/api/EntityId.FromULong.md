<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EntityId.FromULong.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| input | A ulong containing EntityId data that was retrieved from EntityId.ToULong. |

### Returns

**EntityId** The EntityId created from the raw ulong data.

### Description

Creates an EntityId from raw ulong data. This should have come from another valid EntityId. (Use at your own risk. And bit arrangement might change.)

This can be used for storing an EntityId in a common variable, or for custom serialisation.
