<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.Burst.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for a Burst.

A burst is a particle emission event, where a number of particles are all emitted at the same time. Additional resources: ParticleSystem.emission, ParticleSystem.emissionModule.SetBursts, ParticleSystem.emissionModule.GetBursts.

### Properties

| Property | Description |
| --- | --- |
| count | Specify the number of particles to emit. |
| cycleCount | Specifies how many times the system should play the burst. Set this to 0 to make it play indefinitely. |
| maxCount | The maximum number of particles to emit. |
| minCount | The minimum number of particles to emit. |
| probability | The probability that the system triggers a burst. |
| repeatInterval | How often to repeat the burst, in seconds. |
| time | The time that each burst occurs. |

### Constructors

| Constructor | Description |
| --- | --- |
| ParticleSystem.Burst | Construct a new Burst with a time and count. |
