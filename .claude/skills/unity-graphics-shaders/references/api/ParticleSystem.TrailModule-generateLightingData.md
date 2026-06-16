<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TrailModule-generateLightingData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Configures the trails to generate Normals and Tangents. With this data, Scene lighting can affect the trails via Normal Maps and the Unity Standard Shader, or your own custom-built Shaders.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startSize = 0.1f;        var trails = ps.trails;
        trails.enabled = true;
        trails.generateLightingData = true;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.trailMaterial = new Material(Shader.Find("Standard"));
    }
}
```
