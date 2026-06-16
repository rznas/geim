<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-lifetimeByEmitterSpeed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the Particle System Lifetime By Emitter Speed module.

This module controls the initial lifetime of each particle based on the speed of the emitter when the particle was spawned.

Particle System modules do not need to be reassigned back to the system; they are interfaces and not independent objects.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool moduleEnabled = true;
    public float maxSpeed = 5.0f;
    public AnimationCurve curve = AnimationCurve.EaseInOut(0.0f, 1.0f, 1.0f, 0.2f);    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var mainModule = ps.main;
        mainModule.startLifetime = 1.0f;        // make particles less random to more clearly see effect of lifetime.
        var shapeModule = ps.shape;
        shapeModule.radius = 0.1f;
        shapeModule.angle = 1.0f;        var main = ps.main;
        main.simulationSpace = ParticleSystemSimulationSpace.World;        // add a sphere so we can see our transform position as it moves
        var sphere = GameObject.CreatePrimitive(PrimitiveType.Sphere);
        sphere.transform.parent = ps.transform;
    }    void Update()
    {
        var lifetimeByEmitterSpeed = ps.lifetimeByEmitterSpeed;
        lifetimeByEmitterSpeed.enabled = moduleEnabled;
        lifetimeByEmitterSpeed.range = new Vector2(0, maxSpeed);
        lifetimeByEmitterSpeed.curve = new ParticleSystem.MinMaxCurve(1f, curve);        ps.transform.position = new Vector3(Mathf.Sin(Time.time * 2.0f) * 4.0f, 0.0f, 0.0f);
    }    void OnGUI()
    {
        moduleEnabled = GUI.Toggle(new Rect(25, 45, 100, 30), moduleEnabled, "Enabled");
        maxSpeed = GUI.HorizontalSlider(new Rect(25, 85, 100, 30), maxSpeed, 0.0f, 10.0f);
    }
}
```
