<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.ResolveMethodInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| addr | Instruction pointer. |

### Returns

**MethodInfo** Method name and location information.

### Description

Returns method name and location information for the specified method address.

Use *ResolveMethodInfo* to retrieve fully qualified method name of an instruction pointer in the callstack obtained with GetItemCallstack.
