<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRenderer-meshDistribution.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies how the system randomly assigns meshes to particles.

Additional resources: ParticleSystemRenderer.renderMode.

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
