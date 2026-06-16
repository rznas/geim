<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.ExternalForcesModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the ExternalForcesModule of a Particle System.

Additional resources: ParticleSystem, ParticleSystem.externalForces.

### Properties

| Property | Description |
| --- | --- |
| enabled | Specifies whether the ExternalForcesModule is enabled or disabled. |
| influenceCount | The number of Force Fields explicitly provided to the influencers list. |
| influenceFilter | Apply all Force Fields belonging to a matching Layer to this Particle System. |
| influenceMask | Particle System Force Field Components with a matching Layer affect this Particle System. |
| multiplier | Multiplies the magnitude of external forces affecting the particles. |
| multiplierCurve | Multiplies the magnitude of applied external forces. |

### Public Methods

| Method | Description |
| --- | --- |
| AddInfluence | Adds a ParticleSystemForceField to the influencers list. |
| GetInfluence | Gets the ParticleSystemForceField at the given index in the influencers list. |
| IsAffectedBy | Determines whether any particles are inside the influence of a Force Field. |
| RemoveAllInfluences | Removes every Force Field from the influencers list. |
| RemoveInfluence | Removes the Force Field from the influencers list at the given index. |
| SetInfluence | Assigns the Force Field at the given index in the influencers list. |
