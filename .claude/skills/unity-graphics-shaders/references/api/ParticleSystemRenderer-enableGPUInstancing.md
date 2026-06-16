<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRenderer-enableGPUInstancing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables GPU Instancing on platforms that support it.

To use GPU Instancing to render a Particle System, the particle must use a Shader that contains a Procedural Instancing pass (that is, it contains the `#pragma instancing_options procedural` directive).

```csharp
using UnityEngine;
using System.Collections;
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    private ParticleSystemRenderer psr;
    private bool enableGPUInstancing = true;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
        psr = GetComponent<ParticleSystemRenderer>();        psr.renderMode = ParticleSystemRenderMode.Mesh;
        psr.SetMeshes(new Mesh[] { Resources.GetBuiltinResource<Mesh>("Capsule.fbx"), Resources.GetBuiltinResource<Mesh>("Cube.fbx"), Resources.GetBuiltinResource<Mesh>("Sphere.fbx") });        psr.sharedMaterial = new Material(Shader.Find("Particles/Standard Surface"));
    }    void Update()
    {
        psr.enableGPUInstancing = enableGPUInstancing;
    }    void OnGUI()
    {
        enableGPUInstancing = GUI.Toggle(new Rect(25, 45, 200, 30), enableGPUInstancing, "Enabled");
    }
}
```
