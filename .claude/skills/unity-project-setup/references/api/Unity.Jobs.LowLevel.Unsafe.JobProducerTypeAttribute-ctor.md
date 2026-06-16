<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.LowLevel.Unsafe.JobProducerTypeAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| producerType | The type containing a static `Execute` method which the job system invokes. |

### Description

Indicates which type is the JobProducerType.

The job system and the Burst compiler uses this attribute when determining how to instantiate custom job types.
