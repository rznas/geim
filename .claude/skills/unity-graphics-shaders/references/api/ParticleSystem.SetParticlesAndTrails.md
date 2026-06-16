<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.SetParticlesAndTrails.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| particles | The input particle buffer, which represents the particle state to apply to particles in this Particle System. |
| trailData | The Trails to apply to the Particle System. |
| size | The number of elements in the particles array that Unity should write to the Particle System. |
| offset | The location in the particle array to start assigning particles. For example, set the value to 4 to assign particles starting with the 4th particle in the array. |

### Description

Sets the particles and the trails of this Particle System.

Similar to ParticleSystem.SetParticles, if you set the lifetime of a particle to a negative value, Unity removes that particle from the particle system. To keep the particle alive until other trails finish, disable Die With Particles in the Trails module Inspector window. Additional resources: GetParticles, SetParticles, SetTrails.
