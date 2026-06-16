<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CullingGroup.EraseSwapBack.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the entry to erase. |

### Description

Erase a given bounding sphere by moving the final sphere on top of it.

This method also keeps the visibility information correctly synchronized, such that the correct onBecameVisible/onBecameInvisible callbacks will still be sent.

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the entry to erase. |
| myArray | An array of entries. |
| size | The number of entries in the array that are actually used. |

### Description

Erase a given entry in an arbitrary array by copying the final entry on top of it, then decrementing the number of entries used by one.

This method is designed to be used in conjunction with the other overload, for updating your own data arrays when an entry is deleted.
