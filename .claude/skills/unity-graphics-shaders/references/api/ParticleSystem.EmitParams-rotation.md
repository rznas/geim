<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.EmitParams-rotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Override the rotation of particles this system emits.

Note that the value is an Euler angle. Additional resources: ParticleSystem.Particle.rotation.

```csharp
using UnityEngine;// In this example we have a Particle System emitting aligned particles; we then emit and override the rotation every 2 seconds.
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem system;    void Start()
    {
        // A simple particle material with no texture.
        Material particleMaterial = new Material(Shader.Find("Particles/Standard Unlit"));        // Create a Particle System.
        var go = new GameObject("Particle System");
        go.transform.Rotate(-90, 0, 0); // Rotate so the system emits upwards.
        system = go.AddComponent<ParticleSystem>();
        go.GetComponent<ParticleSystemRenderer>().material = particleMaterial;        // Every 2 seconds we will emit.
        InvokeRepeating("DoEmit", 2.0f, 2.0f);
    }    void DoEmit()
    {
        // Any parameters we assign in emitParams will override the current system's when we call Emit.
        // Here we will override the rotation. All other parameters will use the behavior defined in the Inspector.
        var emitParams = new ParticleSystem.EmitParams();
        emitParams.rotation = 45.0f;
        system.Emit(emitParams, 10);
    }
}
```
