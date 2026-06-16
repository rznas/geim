<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.SubEmittersModule.AddSubEmitter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| subEmitter | The sub-emitter to add. |
| type | The event that creates new particles. |
| properties | The properties of the new particles. |
| emitProbability | The probability that the sub-emitter emits particles. Accepts values from 0 to 1, where 0 is never and 1 is always. |

### Description

Add a new sub-emitter.

Additional resources: ParticleSystem.SubEmittersModule.RemoveSubEmitter.

```csharp
using UnityEngine;// Add a birth sub-emitter
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // A simple particle material with no texture.
        Material particleMaterial = new Material(Shader.Find("Particles/Standard Surface"));        // Create a green Particle System.
        var rootSystemGO = new GameObject("Particle System");
        rootSystemGO.transform.Rotate(-90, 0, 0); // Rotate so the system emits upwards.
        var rootParticleSystem = rootSystemGO.AddComponent<ParticleSystem>();
        rootSystemGO.GetComponent<ParticleSystemRenderer>().material = particleMaterial;
        var mainModule = rootParticleSystem.main;
        mainModule.startColor = Color.green;
        mainModule.startSize = 0.5f;        // Spread the particles out more so the sub-emitter effect is more obvious.
        var shapeModule = rootParticleSystem.shape;
        shapeModule.radius = 100;        // Create our sub-emitter and set up bursts.
        var subSystemGO = new GameObject("Particle System");
        var subParticleSystem = subSystemGO.AddComponent<ParticleSystem>();
        subSystemGO.GetComponent<ParticleSystemRenderer>().material = particleMaterial;
        var subMainModule = subParticleSystem.main;
        subMainModule.startColor = Color.red;
        subMainModule.startSize = 0.25f;
        subMainModule.startLifetime = 0.5f; // very short life particles.
        var emissionModule = subParticleSystem.emission;
        emissionModule.rate = 2; // 1 particle will emit every 0.5 sec.
        emissionModule.SetBursts(new ParticleSystem.Burst[] // A burst will emit at 1 and 3 secs.
        {
            new ParticleSystem.Burst(1.0f, 10),
            new ParticleSystem.Burst(3.0f, 10)
        });        // Set up the sub particles so they fade over time.
        var colorModule = subParticleSystem.colorOverLifetime;
        colorModule.enabled = true;
        var gradient = new Gradient();
        gradient.SetKeys(
            new GradientColorKey[] { new GradientColorKey(Color.white, 0.0f), new GradientColorKey(Color.white, 1.0f) }, // Color remains untouched.
            new GradientAlphaKey[] { new GradientAlphaKey(1.0f, 0.0f), new GradientAlphaKey(0.0f, 1.0f) }); // Alpha fades
        colorModule.color = gradient;        // Setup the sub-emitter.
        subSystemGO.transform.SetParent(rootSystemGO.transform);
        var subEmittersModule = rootParticleSystem.subEmitters;
        subEmittersModule.enabled = true;
        subEmittersModule.AddSubEmitter(subParticleSystem, ParticleSystemSubEmitterType.Birth, ParticleSystemSubEmitterProperties.InheritNothing);
    }
}
```

```csharp
using UnityEngine;// Add a collision sub-emitter
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // For this example we will need something to collide with in the world.
        var cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
        cube.transform.position = new Vector3(0, 10, 0); // Position above the Particle System.
        cube.transform.localScale = new Vector3(10, 10, 10);        // A simple particle material with no texture.
        Material particleMaterial = new Material(Shader.Find("Particles/Standard Surface"));        // Create a green Particle System.
        var rootSystemGO = new GameObject("Particle System");
        rootSystemGO.transform.Rotate(-90, 0, 0); // Rotate so the system emits upwards.
        var rootParticleSystem = rootSystemGO.AddComponent<ParticleSystem>();
        rootSystemGO.GetComponent<ParticleSystemRenderer>().material = particleMaterial;
        var mainModule = rootParticleSystem.main;
        mainModule.startColor = Color.green;
        mainModule.startSize = 0.5f;        // Enable and setup the collisions module.
        var collisionModule = rootParticleSystem.collision;
        collisionModule.enabled = true;
        collisionModule.type = ParticleSystemCollisionType.World;        // Create our sub-emitter and setup bursts.
        var subSystemGO = new GameObject("Particle System");
        var subParticleSystem = subSystemGO.AddComponent<ParticleSystem>();
        subSystemGO.GetComponent<ParticleSystemRenderer>().material = particleMaterial;
        var subMainModule = subParticleSystem.main;
        subMainModule.startColor = Color.red;
        subMainModule.startSize = 0.25f;
        var emissionModule = subParticleSystem.emission;
        emissionModule.SetBursts(new ParticleSystem.Burst[] { new ParticleSystem.Burst(0.0f, 10) }); // We will emit 10 particles upon collision.        // Set up the sub-emitter.
        subSystemGO.transform.SetParent(rootSystemGO.transform);
        var subEmittersModule = rootParticleSystem.subEmitters;
        subEmittersModule.enabled = true;
        subEmittersModule.AddSubEmitter(subParticleSystem, ParticleSystemSubEmitterType.Collision, ParticleSystemSubEmitterProperties.InheritNothing);
    }
}
```

```csharp
using UnityEngine;// Add a death sub-emitter
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // A simple particle material with no texture.
        Material particleMaterial = new Material(Shader.Find("Particles/Standard Surface"));        // Create a green Particle System.
        var rootSystemGO = new GameObject("Particle System");
        rootSystemGO.transform.Rotate(-90, 0, 0); // Rotate so the system emits upwards.
        var rootParticleSystem = rootSystemGO.AddComponent<ParticleSystem>();
        rootSystemGO.GetComponent<ParticleSystemRenderer>().material = particleMaterial;
        var mainModule = rootParticleSystem.main;
        mainModule.startColor = Color.green;
        mainModule.startSize = 0.5f;        // Create our sub-emitter and setup bursts.
        var subSystemGO = new GameObject("Particle System");
        var subParticleSystem = subSystemGO.AddComponent<ParticleSystem>();
        subSystemGO.GetComponent<ParticleSystemRenderer>().material = particleMaterial;
        var subMainModule = subParticleSystem.main;
        subMainModule.startColor = Color.red;
        subMainModule.startSize = 0.25f;
        var emissionModule = subParticleSystem.emission;
        emissionModule.SetBursts(new ParticleSystem.Burst[] { new ParticleSystem.Burst(0.0f, 10) }); // We will emit 10 particles upon death.        // Set up the sub-emitter.
        subSystemGO.transform.SetParent(rootSystemGO.transform);
        var subEmittersModule = rootParticleSystem.subEmitters;
        subEmittersModule.enabled = true;
        subEmittersModule.AddSubEmitter(subParticleSystem, ParticleSystemSubEmitterType.Death, ParticleSystemSubEmitterProperties.InheritNothing);
    }
}
```

```csharp
using UnityEngine;// Add a manual sub-emitter
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    private float m_Timer = 0.0f;
    public float m_Interval = 2.0f;    void Start()
    {
        // A simple particle material with no texture.
        Material particleMaterial = new Material(Shader.Find("Particles/Standard Surface"));        // Create a green Particle System.
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
