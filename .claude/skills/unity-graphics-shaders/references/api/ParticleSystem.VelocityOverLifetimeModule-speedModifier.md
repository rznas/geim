<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.VelocityOverLifetimeModule-speedModifier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Curve to control particle speed based on lifetime, without affecting the direction of the particles.

Additional resources: MinMaxCurve.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValueSpeed = 1.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var velocityOverLifetime = ps.velocityOverLifetime;
        velocityOverLifetime.enabled = true;
        velocityOverLifetime.space = ParticleSystemSimulationSpace.World;        AnimationCurve curve = new AnimationCurve();
        curve.AddKey(0.0f, 0.0f);
        curve.AddKey(1.0f, 1.0f);        ParticleSystem.MinMaxCurve minMaxCurve = new ParticleSystem.MinMaxCurve(1.0f, curve);        velocityOverLifetime.speedModifier = minMaxCurve;
    }    void Update()
    {
        var velocityOverLifetime = ps.velocityOverLifetime;
        velocityOverLifetime.speedModifierMultiplier = hSliderValueSpeed;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 40, 100, 30), "Speed");        hSliderValueSpeed = GUI.HorizontalSlider(new Rect(55, 45, 100, 30), hSliderValueSpeed, -50.0f, 50.0f);
    }
}
```
