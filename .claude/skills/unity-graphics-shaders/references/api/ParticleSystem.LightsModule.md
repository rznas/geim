<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.LightsModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Access the ParticleSystem Lights Module.

This module allows you to attach real-time Lights to a percentage of your particles.

The Lights Module is a simple and powerful module that allows particles to cast light onto their environment easily. Lights can inherit properties from the particles they are attached to, such as color and size. Point and Spot Lights are supported, including shadow casting and Light cookies.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    public Light myLight;    void Start()
    {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var lights = ps.lights;
        lights.enabled = true;
        lights.ratio = 0.5f;
        lights.light = myLight;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| alphaAffectsIntensity | Toggle whether the system multiplies the particle alpha by the light intensity when it computes the final light intensity. |
| enabled | Specifies whether the LightsModule is enabled or disabled. |
| intensity | Define a curve to apply custom intensity scaling to particle Lights. |
| intensityMultiplier | Intensity multiplier. |
| light | Select what Light Prefab you want to base your particle lights on. |
| maxLights | Set a limit on how many Lights this Module can create. |
| range | Define a curve to apply custom range scaling to particle Lights. |
| rangeMultiplier | Range multiplier. |
| ratio | Choose what proportion of particles receive a dynamic light. |
| sizeAffectsRange | Toggle whether the system multiplies the particle size by the light range to determine the final light range. |
| useParticleColor | Toggle whether the particle lights multiply their color by the particle color. |
| useRandomDistribution | Randomly assign Lights to new particles based on ParticleSystem.LightsModule.ratio. |
