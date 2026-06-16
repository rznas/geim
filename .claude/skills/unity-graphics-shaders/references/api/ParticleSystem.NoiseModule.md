<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.NoiseModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the NoiseModule.

The Noise Module allows you to apply turbulence to the movement of your particles. Use the low quality settings to create computationally efficient Noise, or simulate smoother, richer Noise with the higher quality settings. You can also choose to define the behavior of the Noise individually for each axis.

Additional resources: ParticleSystem, ParticleSystem.noise.

### Properties

| Property | Description |
| --- | --- |
| damping | Higher frequency noise reduces the strength by a proportional amount, if enabled. |
| enabled | Specifies whether the the NoiseModule is enabled or disabled. |
| frequency | Low values create soft, smooth noise, and high values create rapidly changing noise. |
| octaveCount | Layers of noise that combine to produce final noise. |
| octaveMultiplier | When combining each octave, scale the intensity by this amount. |
| octaveScale | When combining each octave, zoom in by this amount. |
| positionAmount | How much the noise affects the particle positions. |
| quality | Generate 1D, 2D or 3D noise. |
| remap | Define how the noise values are remapped. |
| remapEnabled | Enable remapping of the final noise values, allowing for noise values to be translated into different values. |
| remapMultiplier | Remap multiplier. |
| remapX | Define how the noise values are remapped on the x-axis, when using the ParticleSystem.NoiseModule.separateAxes option. |
| remapXMultiplier | x-axis remap multiplier. |
| remapY | Define how the noise values are remapped on the y-axis, when using the ParticleSystem.NoiseModule.separateAxes option. |
| remapYMultiplier | y-axis remap multiplier. |
| remapZ | Define how the noise values are remapped on the z-axis, when using the ParticleSystem.NoiseModule.separateAxes option. |
| remapZMultiplier | z-axis remap multiplier. |
| rotationAmount | How much the noise affects the particle rotation, in degrees per second. |
| scrollSpeed | Scroll the noise map over the Particle System. |
| scrollSpeedMultiplier | Scroll speed multiplier. |
| separateAxes | Control the noise separately for each axis. |
| sizeAmount | How much the noise affects the particle sizes, applied as a multiplier on the size of each particle. |
| strength | How strong the overall noise effect is. |
| strengthMultiplier | Strength multiplier. |
| strengthX | Define the strength of the effect on the x-axis, when using the ParticleSystem.NoiseModule.separateAxes option. |
| strengthXMultiplier | x-axis strength multiplier. |
| strengthY | Define the strength of the effect on the y-axis, when using the ParticleSystem.NoiseModule.separateAxes option. |
| strengthYMultiplier | y-axis strength multiplier. |
| strengthZ | Define the strength of the effect on the z-axis, when using the ParticleSystem.NoiseModule.separateAxes option. |
| strengthZMultiplier | z-axis strength multiplier. |
