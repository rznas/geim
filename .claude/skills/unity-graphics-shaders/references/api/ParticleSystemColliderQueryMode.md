<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemColliderQueryMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether collider information is available when using the [[ParticleSystem::GetTriggerParticles]] method.

### Properties

| Property | Description |
| --- | --- |
| Disabled | [[ParticleSystem::GetTriggerParticles]] does not return any information about which colliders each particle is interacting with. |
| One | [[ParticleSystem::GetTriggerParticles]] may only return one collider that each particle is interacting with. |
| All | [[ParticleSystem::GetTriggerParticles]] returns all colliders that each particle is interacting with. |
