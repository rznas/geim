<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TriggerModule-colliderQueryMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines whether collider information is available when calling [[ParticleSystem::GetTriggerParticles]].

Use this option if you need to know which Colliders particles interacted with, inside the OnParticleTrigger callback.

Using it has an impact on performance, therefore it is disabled by default.
