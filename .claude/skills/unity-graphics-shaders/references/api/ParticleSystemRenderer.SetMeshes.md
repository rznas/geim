<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRenderer.SetMeshes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| meshes | The array of Meshes to use. |
| size | The number of elements from the Mesh array to apply. |

### Description

Sets the Meshes that the ParticleSystemRenderer uses to display particles when the ParticleSystemRenderer.renderMode is set to ParticleSystemRenderMode.Mesh.

Additional resources: ParticleSystemRenderer.renderMode.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    private ParticleSystemRenderer psr;    void Start() {        ps = GetComponent<ParticleSystem>();
        psr = GetComponent<ParticleSystemRenderer>();        psr.renderMode = ParticleSystemRenderMode.Mesh;
        psr.SetMeshes(new Mesh[]{ Resources.GetBuiltinResource<Mesh>("Capsule.fbx"), Resources.GetBuiltinResource<Mesh>("Cube.fbx"), Resources.GetBuiltinResource<Mesh>("Sphere.fbx") });
    }    void OnGUI() {
        GUI.Label(new Rect(25, 40, 200, 30), "Mesh Count: " + psr.meshCount.ToString());
    }
}
```
