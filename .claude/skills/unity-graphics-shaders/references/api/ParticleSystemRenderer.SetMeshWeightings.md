<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRenderer.SetMeshWeightings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| weightings | The array of weights to use. |
| size | The number of elements from the weighting array to apply. |

### Description

Sets the weights that the ParticleSystemRenderer uses to assign Meshes to particles.

The ParticleSystemRenderer only uses these weights if you set ParticleSystemRenderer.renderMode to ParticleSystemRenderMode.Mesh and set ParticleSystemRenderer.meshDistribution to ParticleSystemMeshDistribution.NonUniformRandom.

The weightings are relative to each other but can be any positive value. For example, if you set the weights to 6 and 3, the ParticleSystemRenderer randomly selects the first Mesh approximately twice as often as the second Mesh. It can be most intuitive to use percentages for the weightings and ensure that the sum of the weightings adds up to 100, but this is not a requirement.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    private ParticleSystemRenderer psr;    void Start() {        ps = GetComponent<ParticleSystem>();
        psr = GetComponent<ParticleSystemRenderer>();        psr.renderMode = ParticleSystemRenderMode.Mesh;
        psr.meshDistribution = ParticleSystemMeshDistribution.NonUniformRandom;
        psr.SetMeshes(new Mesh[]{ Resources.GetBuiltinResource<Mesh>("Capsule.fbx"), Resources.GetBuiltinResource<Mesh>("Cube.fbx"), Resources.GetBuiltinResource<Mesh>("Sphere.fbx") });
        psr.SetMeshWeightings(new float[]{ 0.1f, 0.1f, 0.8f });
    }    void OnGUI() {
        GUI.Label(new Rect(25, 40, 200, 30), "Mesh Count: " + psr.meshCount.ToString());
    }
}
```
