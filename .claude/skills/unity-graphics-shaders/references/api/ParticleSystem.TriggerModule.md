<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TriggerModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the TriggerModule.

This module is useful for killing particles when they touch a set of collision shapes, or for calling a script command to let you apply custom particle behaviors when the trigger is activated.

The example code for MonoBehaviour.OnParticleTrigger shows how the callback type action works.

Additional resources: ParticleSystem, ParticleSystem.trigger.

### Properties

| Property | Description |
| --- | --- |
| colliderCount | Indicates the number of collision shapes attached to this Particle System trigger. |
| colliderQueryMode | Determines whether collider information is available when calling [[ParticleSystem::GetTriggerParticles]]. |
| enabled | Specifies whether the TriggerModule is enabled or disabled. |
| enter | Choose what action to perform when particles enter the trigger volume. |
| exit | Choose what action to perform when particles leave the trigger volume. |
| inside | Choose what action to perform when particles are inside the trigger volume. |
| outside | Choose what action to perform when particles are outside the trigger volume. |
| radiusScale | A multiplier Unity applies to the size of each particle before it processes overlaps. |

### Public Methods

| Method | Description |
| --- | --- |
| AddCollider | Adds a Collision shape associated with this Particle System trigger. |
| GetCollider | Gets a collision shape associated with this Particle System trigger. |
| RemoveCollider | Removes a collision shape associated with this Particle System trigger. |
| SetCollider | Sets a Collision shape associated with this Particle System trigger. |
