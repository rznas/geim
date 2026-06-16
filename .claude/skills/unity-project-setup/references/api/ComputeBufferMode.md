<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeBufferMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Intended usage of the buffer.

Use this enum to convey the intended usage of the buffer to the engine, so that Unity can decide where and how to store the buffer contents.

### Properties

| Property | Description |
| --- | --- |
| Immutable | Static buffer, only initial upload allowed by the CPU |
| Dynamic | Dynamic buffer. |
| SubUpdates | Dynamic, unsynchronized access to the buffer. |
