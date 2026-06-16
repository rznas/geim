<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.AllocateCustomDataAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stream | The custom data stream to allocate. |

### Description

Ensures that the customData1 and customData2 particle attribute arrays are allocated.

This is important if you want to use either of these attributes in a job, such as IJobParticleSystem.
