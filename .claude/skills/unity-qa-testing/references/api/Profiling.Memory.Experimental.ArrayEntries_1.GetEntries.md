<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Memory.Experimental.ArrayEntries_1.GetEntries.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| indexStart | Index to start indexing the entries. |
| numEntries | Number of elements to retrieve. |
| dataOut | An array to store the returned data in. |

### Description

Retrieves a subset of entries in an array.

GetEntries retrieves the number of entries specified by the numEntries parameter, starting at index as specified by the indexStart Parameter. The entries are written to the array specified by the dataOut parameter.

The method throws an IOException if you try to retrieve entries past the end of the of array (entryIndex plus numEntries is greater than the number of entries in the array) or the number of entries to retrieve is greater than the size of the dataOut array.
