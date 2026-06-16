<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TriggerSubEmitter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| subEmitterIndex | Index of the sub emitter to trigger. |

### Description

Triggers the specified sub emitter on all particles of the Particle System.

```csharp
using UnityEngine;// Add a manual sub-emitter
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    private float m_Timer = 0.0f;
    public float m_Interval = 2.0f;    void Start()
    {
        // A simple particle material with no texture.
        Material particleMaterial = new Material(Shader.Find("Particles/Standard Unlit"));        // Create a green Particle System.
        var rootSystemGO = new GameObject("Particle System");
        rootSystemGO.transform.Rotate(-90, 0, 0); // Rotate so the system emits upwards.
        ps = rootSystemGO.AddComponent<ParticleSystem>();
        rootSystemGO.GetComponent<ParticleSystemRenderer>().material = particleMaterial;
        var mainModule = ps.main;
        mainModule.startColor = Color.green;
        mainModule.startSize = 0.5f;        // Create our sub-emitter and setup bursts.
        var subSystemGO = new GameObject("Particle System");
        var subParticleSystem = subSystemGO.AddComponent<ParticleSystem>();
        subSystemGO.GetComponent<ParticleSystemRenderer>().material = particleMaterial;
        var subMainModule = subParticleSystem.main;
        subMainModule.startColor = Color.red;
        subMainModule.startSize = 0.25f;
        var emissionModule = subParticleSystem.emission;
        emissionModule.SetBursts(new ParticleSystem.Burst[] { new ParticleSystem.Burst(0.0f, 4) }); // We will emit 10 particles when triggered.        // Set up the sub-emitter.
        subSystemGO.transform.SetParent(rootSystemGO.transform);
        var subEmittersModule = ps.subEmitters;
        subEmittersModule.enabled = true;
        subEmittersModule.AddSubEmitter(subParticleSystem, ParticleSystemSubEmitterType.Manual, ParticleSystemSubEmitterProperties.InheritNothing);
    }    private void Update()
    {
        m_Timer += Time.deltaTime;
        while (m_Timer >= m_Interval)
        {
            ps.TriggerSubEmitter(0);
            m_Timer -= m_Interval;
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| subEmitterIndex | Index of the sub emitter to trigger. |
| particle | Triggers the sub emtter on a single particle. |
| particles | Triggers the sub emtter on a list of particles. |

### Description

Triggers the specified sub emitter on the specified particle(s) of the Particle System.
