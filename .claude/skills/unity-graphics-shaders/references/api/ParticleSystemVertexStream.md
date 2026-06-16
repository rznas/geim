<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemVertexStream.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

All possible Particle System vertex shader inputs.

### Properties

| Property | Description |
| --- | --- |
| Position | The position of each particle vertex, in world space. |
| Normal | The vertex normal of each particle. |
| Tangent | The tangent vector for each particle (for normal mapping). |
| Color | The color of each particle. |
| UV | The first UV stream of each particle. |
| UV2 | The second UV stream of each particle. |
| UV3 | The third UV stream of each particle (only for meshes). |
| UV4 | The fourth UV stream of each particle (only for meshes). |
| AnimBlend | The amount to blend between animated texture frames, from 0 to 1. |
| AnimFrame | The current animation frame index of each particle. |
| Center | The center position of the entire particle, in world space. |
| VertexID | The vertex ID of each particle. |
| SizeX | The X axis size of each particle. |
| SizeXY | The X and Y axis sizes of each particle. |
| SizeXYZ | The 3D size of each particle. |
| Rotation | The Z axis rotation of each particle. |
| Rotation3D | The 3D rotation of each particle. |
| RotationSpeed | The Z axis rotational speed of each particle. |
| RotationSpeed3D | The 3D rotational speed of each particle. |
| Velocity | The velocity of each particle, in world space. |
| Speed | The speed of each particle, calculated by taking the magnitude of the velocity. |
| AgePercent | The normalized age of each particle, from 0 to 1. |
| InvStartLifetime | The reciprocal of the starting lifetime, in seconds (1.0f / startLifetime). |
| StableRandomX | A random number for each particle, which remains constant during their lifetime. |
| StableRandomXY | Two random numbers for each particle, which remain constant during their lifetime. |
| StableRandomXYZ | Three random numbers for each particle, which remain constant during their lifetime. |
| StableRandomXYZW | Four random numbers for each particle, which remain constant during their lifetime. |
| VaryingRandomX | A random number for each particle, which changes during their lifetime. |
| VaryingRandomXY | Two random numbers for each particle, which change during their lifetime. |
| VaryingRandomXYZ | Three random numbers for each particle, which change during their lifetime. |
| VaryingRandomXYZW | Four random numbers for each particle, which change during their lifetime. |
| Custom1X | One custom value for each particle, defined by the Custom Data Module, or ParticleSystem.SetCustomParticleData. |
| Custom1XY | Two custom values for each particle, defined by the Custom Data Module, or ParticleSystem.SetCustomParticleData. |
| Custom1XYZ | Three custom values for each particle, defined by the Custom Data Module, or ParticleSystem.SetCustomParticleData. |
| Custom1XYZW | Four custom values for each particle, defined by the Custom Data Module, or ParticleSystem.SetCustomParticleData. |
| Custom2X | One custom value for each particle, defined by the Custom Data Module, or ParticleSystem.SetCustomParticleData. |
| Custom2XY | Two custom values for each particle, defined by the Custom Data Module, or ParticleSystem.SetCustomParticleData. |
| Custom2XYZ | Three custom values for each particle, defined by the Custom Data Module, or ParticleSystem.SetCustomParticleData. |
| Custom2XYZW | Four custom values for each particle, defined by the Custom Data Module, or ParticleSystem.SetCustomParticleData. |
| NoiseSumX | The accumulated X axis noise, over the lifetime of the particle. |
| NoiseSumXY | The accumulated X and Y axis noise, over the lifetime of the particle. |
| NoiseSumXYZ | The accumulated 3D noise, over the lifetime of the particle. |
| NoiseImpulseX | The X axis noise on the current frame. |
| NoiseImpulseXY | The X and Y axis noise on the current frame. |
| NoiseImpulseXYZ | The 3D noise on the current frame. |
| MeshIndex | The index of the mesh used by the current particle. |
| ParticleIndex | The index of the current particle in the particle data array. |
| ColorPackedAsTwoFloats | The color of each particle, packed in a special format to allow decoding on GPUs that do not support bit-packing operations. |
| MeshAxisOfRotation | The axis of rotation used by mesh particles when not using 3D rotation. |
| NextTrailCenter | The center of the next trail position, connected to the current position. |
| PreviousTrailCenter | The center of the previous trail position, connected to the current position. |
| PercentageAlongTrail | The percentage along the trail, in the range 0-1. |
| TrailWidth | The width of the trail. |
