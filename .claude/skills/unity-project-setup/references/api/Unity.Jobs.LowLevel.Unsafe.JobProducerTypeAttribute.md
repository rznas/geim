<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.LowLevel.Unsafe.JobProducerTypeAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that a job interface's Execute method can be Burst compiled.

All job interface types must be marked with the JobProducerType. This is used to compile the Execute method by the Burst ASM inspector.

### Properties

| Property | Description |
| --- | --- |
| ProducerType | Contains the Execute static method which the job system invokes. |

### Constructors

| Constructor | Description |
| --- | --- |
| JobProducerTypeAttribute | Indicates which type is the JobProducerType. |
