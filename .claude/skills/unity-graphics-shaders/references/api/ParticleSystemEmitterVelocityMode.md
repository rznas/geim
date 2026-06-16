<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemEmitterVelocityMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Control how a Particle System calculates its velocity.

### Properties

| Property | Description |
| --- | --- |
| Transform | Calculate the Particle System velocity by using the Transform component. |
| Rigidbody | Calculate the Particle System velocity by using a Rigidbody or Rigidbody2D component, if one exists on the GameObject. |
| Custom | When the Particle System calculates its velocity, it instead uses the custom value set in ParticleSystem.MainModule.emitterVelocity. |
