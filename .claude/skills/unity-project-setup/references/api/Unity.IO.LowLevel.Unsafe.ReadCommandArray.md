<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.ReadCommandArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array of ReadCommand instances to pass to AsyncReadManager.Read and AsyncReadManager.ReadDeferred.

To create a ReadCommandArray object, use UnsafeUtility.Malloc to allocate an array of ReadCommands (or allocate a NativeArray) and populate it with the commands to perform. You must set CommandCount to the number of commands in the array. Failure to do so is dangerous and could lead to buffer overruns or skipping the read commands at the end.

### Properties

| Property | Description |
| --- | --- |
| CommandCount | The number of individual entries in the array of ReadCommands pointed to by ReadCommands. |
| ReadCommands | Pointer to a NativeArray of ReadCommands. |
