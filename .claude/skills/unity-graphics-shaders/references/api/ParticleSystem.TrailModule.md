<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TrailModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the TrailsModule.

This module adds trails to your particles. For example, you can make the trails stay in the wake of particles as they move, or make them connect each particle in the system together.

Additional resources: ParticleSystem, ParticleSystem.trails.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var trails = ps.trails;
        trails.enabled = true;
        trails.ratio = 0.5f;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| attachRibbonsToTransform | Adds an extra position to each ribbon, connecting it to the location of the Transform Component. |
| colorOverLifetime | The gradient that controls the trail colors during the lifetime of the attached particle. |
| colorOverTrail | The gradient that controls the trail colors over the length of the trail. |
| dieWithParticles | Specifies whether trails disappear immediately when their owning particle dies. When false, each trail persists until all its points have naturally expired, based on its lifetime. |
| enabled | Specifies whether the TrailModule is enabled or disabled. |
| generateLightingData | Configures the trails to generate Normals and Tangents. With this data, Scene lighting can affect the trails via Normal Maps and the Unity Standard Shader, or your own custom-built Shaders. |
| inheritParticleColor | Toggle whether the trail inherits the particle color as its starting color. |
| lifetime | The curve describing the trail lifetime, throughout the lifetime of the particle. |
| lifetimeMultiplier | A multiplier for ParticleSystem.TrailModule.lifetime. |
| minVertexDistance | Set the minimum distance each trail can travel before the system adds a new vertex to it. |
| mode | Choose how the system generates the particle trails. |
| ratio | Choose what proportion of particles receive a trail. |
| ribbonCount | Select how many lines to create through the Particle System. |
| shadowBias | Apply a shadow bias to prevent self-shadowing artifacts. The specified value is the proportion of the trail width at each segment. |
| sizeAffectsLifetime | Set whether the particle size acts as a multiplier on top of the trail lifetime. |
| sizeAffectsWidth | Set whether the particle size acts as a multiplier on top of the trail width. |
| splitSubEmitterRibbons | Specifies whether, if you use this system as a sub-emitter, ribbons connect particles from each parent particle independently. |
| textureMode | Choose whether the U coordinate of the trail Texture is tiled or stretched. |
| textureScale | A multiplier for the UV coordinates of the trail texture. |
| widthOverTrail | The curve describing the width of each trail point. |
| widthOverTrailMultiplier | A multiplier for ParticleSystem.TrailModule.widthOverTrail. |
| worldSpace | Drop new trail points in world space, regardless of Particle System Simulation Space. |
