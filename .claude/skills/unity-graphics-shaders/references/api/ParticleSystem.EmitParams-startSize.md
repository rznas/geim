<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.EmitParams-startSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Override the initial size of particles this system emits.

Additional resources: ParticleSystem.Particle.startSize.

```csharp
using UnityEngine;// In this example we have a Particle System emitting small particles; we then emit and override the size every 2 seconds.
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem system;    void Start()
    {
        // A simple particle material with no texture.
        Material particleMaterial = new Material(Shader.Find("Particles/Standard Unlit"));        // Create a Particle System.
        var go = new GameObject("Particle System");
        go.transform.Rotate(-90, 0, 0); // Rotate so the system emits upwards.
        system = go.AddComponent<ParticleSystem>();
        go.GetComponent<ParticleSystemRenderer>().material = particleMaterial;
        var mainModule = system.main;
        mainModule.startSize = 0.1f;        // Every 2 seconds we will emit.
        InvokeRepeating("DoEmit", 2.0f, 2.0f);
    }    void DoEmit()
    {
        // Any parameters we assign in emitParams will override the current system's when we call Emit.
        // Here we will override the size. All other parameters will use the behavior defined in the Inspector.
        var emitParams = new ParticleSystem.EmitParams();
        emitParams.startSize = 0.5f;
        system.Emit(emitParams, 10);
    }
}
```
