<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.SetParticles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| particles | The input particle buffer, which represents the particle state to apply to particles in this Particle System. |
| size | The number of elements in the particles array that Unity should write to the Particle System. |
| offset | The location in the particle array to start assigning particles. For example, set the value to 4 to assign particles starting with the 4th particle in the array. |

### Description

Sets the particles of this Particle System.

Setting the lifetime of a particle to a negative value will result in that particle being removed from the Particle System. Additional resources: GetParticles.
