<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.Burst-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| _time | Time to emit the burst. |
| _minCount | Minimum number of particles to emit. |
| _maxCount | Maximum number of particles to emit. |
| _count | Number of particles to emit. |
| _cycleCount | Specifies how many times the system should play the burst. Set this to 0 to make it play indefinitely. |
| _repeatInterval | How often to repeat the burst, in seconds. |

### Description

Construct a new Burst with a time and count.

Additional resources: ParticleSystem.emissionModule.SetBursts, ParticleSystem.emissionModule.GetBursts.

```csharp
using UnityEngine;
using System.Collections;// Create a looping Particle System.
// At 0, 1 and 2 secs the number of particles in each loop
// are changed from 10, to 50, then to 100.
// The loops repeat after 3 seconds.[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    public Material part;    void Start()
    {
        // create a red ground plane
        GameObject ground = GameObject.CreatePrimitive(PrimitiveType.Quad);
        ground.transform.rotation = Quaternion.Euler(90, 0, 0);
        ground.transform.localScale = new Vector3(10, 10, 10);
        ground.GetComponent<Renderer>().material.color = Color.red;        // rotate the GameObject so particles rise up in the y-axis
        gameObject.transform.rotation = Quaternion.Euler(-90, 0, 0);
        gameObject.AddComponent<ParticleSystem>();        // create the ParticleSystem
        ParticleSystem ps;
        ps = gameObject.GetComponent<ParticleSystem>();        ps.Stop();        // set the MainModule default values
        var main = ps.main;
        main.startColor = Color.yellow;
        main.duration = 3;        // create a cone and change it into a cylinder
        var shape = ps.shape;
        shape.shapeType = ParticleSystemShapeType.Cone;
        shape.angle = 0.0f;
        shape.radius = 2.0f;
        shape.radiusThickness = 0.0f;        // use the passed in material
        gameObject.GetComponent<ParticleSystemRenderer>().material = part;        // set up the emission to generate particles
        var em = ps.emission;
        em.enabled = true;
        em.rateOverTime = 0;        em.SetBursts(
            new ParticleSystem.Burst[]
            {
                new ParticleSystem.Burst(0.0f, 10),
                new ParticleSystem.Burst(1.0f, 50),
                new ParticleSystem.Burst(2.0f, 100)
            });        ps.Play();
    }
}
```
