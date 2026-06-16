<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.EmissionModule-rateOverDistance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The rate at which the emitter spawns new particles over distance.

The emitter only spawns new particles when it moves. If the system's GameObject contains a Rigidbody or Rigidbody2D component, and the system's **Emitter Velocity** property is set to **Rigidbody**, Unity calculates the distance based on the velocity of the Rigidbody. Otherwise, Unity calculates the distance based on how far the GameObject's Transform component has moved since the last update. Additional resources: MinMaxCurve, ParticleSystem.EmissionModule.rateOverTime, ParticleSystem.MainModule.emitterVelocityMode.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValue = 5.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.simulationSpace = ParticleSystemSimulationSpace.World;        var shape = ps.shape;
        shape.enabled = false;        var emission = ps.emission;
        emission.rateOverTime = 0.0f;        // add a sphere so we can see our transform position as it moves
        var sphere = GameObject.CreatePrimitive(PrimitiveType.Sphere);
        sphere.transform.parent = ps.transform;
    }    void Update()
    {
        var emission = ps.emission;
        emission.rateOverDistance = hSliderValue;        ps.transform.position = new Vector3(Mathf.Sin(Time.time) * 2.0f, 0.0f, 0.0f);
    }    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 45, 100, 30), hSliderValue, 1.0f, 20.0f);
    }
}
```
