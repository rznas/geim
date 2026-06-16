<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VFXBatchedEffectInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This structure provides runtime information on how Unity batches a VisualEffectAsset.

### Properties

| Property | Description |
| --- | --- |
| activeBatchCount | The number of active batches the VisualEffectAsset uses. |
| activeInstanceCount | The number of active VisualEffect instances of this VisualEffectAsset. |
| inactiveBatchCount | The number of inactive batches that are allocated for later reuse. |
| maxInstancePerBatchCapacity | The maximum number of VisualEffect that can be instanciated in a single batch. |
| totalCPUSizeInBytes | The CPU size, in bytes, that the batches of this VisualEffectAsset use. |
| totalGPUSizeInBytes | The GPU size, in bytes, that the batches of this VisualEffectAsset use. |
| totalInstanceCapacity | The total number of VisualEffect that can be instanciated with the current allocated batches. |
| unbatchedInstanceCount | The number of VisualEffect instances that are not batched. |
| vfxAsset | The VisualEffectAsset associated with this Batched Effect Info. |
