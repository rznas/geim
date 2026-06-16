<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.LowLevel.Unsafe.BatchQueryJob_2-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| commands | A NativeArray<T0> that contains the commands to execute during a batch. The job that executes the query only reads from this native array, and doesn't write to it. |
| results | A NativeArray<T0> to contain the results from the commands. The job that executes the query writes to this native array. |

### Description

Initializes and returns an instance of BatchQueryJob<T0,T1>.
