<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Memory.Experimental.TypeFlagsExtensions.ArrayRank.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| flags | The TypeFlags to compute the array rank of (assessible via this). |

### Returns

**int** The array rank encoded in the Type Flags.

### Description

If the type is an array type, retrieves the array rank of the type flags.

For instance, a type of int[][] will return an array rank of 2.
