<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.SubEmittersModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the SubEmittersModule.

The sub-emitters module allows you to spawn particles in child emitters from the positions of particles in the parent system.

This module triggers child particle emission on events such as the birth, death, and collision of particles in the parent system.

Additional resources: ParticleSystem, ParticleSystem.subEmitters.

### Properties

| Property | Description |
| --- | --- |
| enabled | Specifies whether the SubEmittersModule is enabled or disabled. |
| subEmittersCount | The total number of sub-emitters. |

### Public Methods

| Method | Description |
| --- | --- |
| AddSubEmitter | Add a new sub-emitter. |
| GetSubEmitterEmitProbability | Gets the probability that the sub-emitter emits particles. |
| GetSubEmitterProperties | Gets the properties of the sub-emitter at the given index. |
| GetSubEmitterSystem | Gets the sub-emitter Particle System at the given index. |
| GetSubEmitterType | Gets the type of the sub-emitter at the given index. |
| RemoveSubEmitter | Removes a sub-emitter from the given index in the array. |
| SetSubEmitterEmitProbability | Sets the probability that the sub-emitter emits particles. |
| SetSubEmitterProperties | Sets the properties of the sub-emitter at the given index. |
| SetSubEmitterSystem | Sets the Particle System to use as the sub-emitter at the given index. |
| SetSubEmitterType | Sets the type of the sub-emitter at the given index. |
