<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.NativeArrayOptions.UninitializedMemory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Leaves NativeArray<T0> memory uninitialized.

Uninitialized memory can improve performance, but means that the contents of the NativeArray elements are undefined. In performance sensitive code you might use NativeArrayOptions.Uninitialized if you want to write to the entire array right after creating it without reading any of the elements first.
