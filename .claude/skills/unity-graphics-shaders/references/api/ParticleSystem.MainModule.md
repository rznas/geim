<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the MainModule of a Particle System.

Additional resources: ParticleSystem, ParticleSystem.main.

### Properties

| Property | Description |
| --- | --- |
| cullingMode | Configure whether the Particle System will still be simulated each frame, when it is offscreen. |
| customSimulationSpace | Simulate particles relative to a custom transform component. |
| duration | The duration of the Particle System in seconds. |
| emitterVelocity | The current Particle System velocity. |
| emitterVelocityMode | Control how the Particle System calculates its velocity, when moving in the world. |
| flipRotation | Makes some particles spin in the opposite direction. |
| gravityModifier | A scale that this Particle System applies to gravity, defined either by Physics.gravity or [Physics2D.gravity]]. |
| gravityModifierMultiplier | Change the gravity multiplier. |
| gravitySource | Specify whether to use the gravity strength from the 2D or 3D physics system. |
| loop | Specifies whether the Particle System is looping. |
| maxParticles | The maximum number of particles to emit. |
| playOnAwake | If set to true, the Particle System automatically begins to play on startup. |
| prewarm | If ParticleSystem.MainModule.loop is true, when you enable this property, the Particle System looks like it has already simulated for one loop when first becoming visible. |
| ringBufferLoopRange | When ParticleSystem.MainModule.ringBufferMode is set to loop, this value defines the proportion of the particle life that loops. |
| ringBufferMode | Configure the Particle System to not kill its particles when their lifetimes are exceeded. |
| scalingMode | Control how the Particle System applies its Transform component to the particles it emits. |
| simulationSpace | This selects the space in which to simulate particles. It can be either world or local space. |
| simulationSpeed | Override the default playback speed of the Particle System. |
| startColor | The initial color of particles when the Particle System first spawns them. |
| startDelay | Start delay in seconds. |
| startDelayMultiplier | A multiplier for ParticleSystem.MainModule.startDelay in seconds. |
| startLifetime | The total lifetime in seconds that each new particle has. |
| startLifetimeMultiplier | A multiplier for ParticleSystem.MainModule.startLifetime. |
| startRotation | The initial rotation of particles when the Particle System first spawns them. |
| startRotation3D | A flag to enable 3D particle rotation. |
| startRotationMultiplier | A multiplier for ParticleSystem.MainModule.startRotation. |
| startRotationX | The initial rotation of particles around the x-axis when emitted. |
| startRotationXMultiplier | The initial rotation multiplier of particles around the x-axis when the Particle System first spawns them. |
| startRotationY | The initial rotation of particles around the y-axis when the Particle System first spawns them. |
| startRotationYMultiplier | The initial rotation multiplier of particles around the y-axis when the Particle System first spawns them.. |
| startRotationZ | The initial rotation of particles around the z-axis when the Particle System first spawns them |
| startRotationZMultiplier | The initial rotation multiplier of particles around the z-axis when the Particle System first spawns them. |
| startSize | The initial size of particles when the Particle System first spawns them. |
| startSize3D | A flag to enable specifying particle size individually for each axis. |
| startSizeMultiplier | A multiplier for the initial size of particles when the Particle System first spawns them. |
| startSizeX | The initial size of particles along the x-axis when the Particle System first spawns them. |
| startSizeXMultiplier | A multiplier for ParticleSystem.MainModule.startSizeX. |
| startSizeY | The initial size of particles along the y-axis when the Particle System first spawns them. |
| startSizeYMultiplier | A multiplier for ParticleSystem.MainModule.startSizeY. |
| startSizeZ | The initial size of particles along the z-axis when the Particle System first spawns them. |
| startSizeZMultiplier | A multiplier for ParticleSystem.MainModule.startSizeZ. |
| startSpeed | The initial speed of particles when the Particle System first spawns them. |
| startSpeedMultiplier | A multiplier for ParticleSystem.MainModule.startSpeed. |
| stopAction | Select whether to Disable or Destroy the GameObject, or to call the MonoBehaviour.OnParticleSystemStopped script Callback, when the Particle System stops and all particles have died. |
| useUnscaledTime | When true, use the unscaled delta time to simulate the Particle System. Otherwise, use the scaled delta time. |
