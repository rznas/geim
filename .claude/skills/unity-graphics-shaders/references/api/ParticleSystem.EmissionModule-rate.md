<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.EmissionModule-rate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The rate at which the system spawns new particles.

Additional resources: MinMaxCurve.

```csharp
using UnityEngine;// This example shows setting a constant rate value.
public class ConstantRateExample : MonoBehaviour
{
    ParticleSystem myParticleSystem;
    ParticleSystem.EmissionModule emissionModule;    void Start()
    {
        // Get the system and the emission module.
        myParticleSystem = GetComponent<ParticleSystem>();
        emissionModule = myParticleSystem.emission;        GetValue();
        SetValue();
    }    void GetValue()
    {
        print("The constant value is " + emissionModule.rate.constant);
    }    void SetValue()
    {
        emissionModule.rate = 10.0f;
    }
}
```

```csharp
using UnityEngine;// This example shows using 2 constants to drive the rate.
public class TwoConstantsRateExample : MonoBehaviour
{
    ParticleSystem myParticleSystem;
    ParticleSystem.EmissionModule emissionModule;    void Start()
    {
        // Get the system and the emission module.
        myParticleSystem = GetComponent<ParticleSystem>();
        emissionModule = myParticleSystem.emission;        GetValue();
        SetValue();
    }    void GetValue()
    {
        print(string.Format("The constant values are: min {0} max {1}.", emissionModule.rate.constantMin, emissionModule.rate.constantMax));
    }    void SetValue()
    {
        emissionModule.rate = new ParticleSystem.MinMaxCurve(0.0f, 10.0f);
    }
}
```

```csharp
using UnityEngine;// This example shows using a curve to drive the rate.
public class CurveRateExample : MonoBehaviour
{
    ParticleSystem myParticleSystem;
    ParticleSystem.EmissionModule emissionModule;    // We can "scale" the curve with this value. It gets multiplied by the curve.
    public float scalar = 1.0f;    AnimationCurve ourCurve;    void Start()
    {
        // Get the system and the emission module.
        myParticleSystem = GetComponent<ParticleSystem>();
        emissionModule = myParticleSystem.emission;        // A simple linear curve.
        ourCurve = new AnimationCurve();
        ourCurve.AddKey(0.0f, 0.0f);
        ourCurve.AddKey(1.0f, 1.0f);        // Apply the curve.
        emissionModule.rate = new ParticleSystem.MinMaxCurve(scalar, ourCurve);        // In 5 seconds we will modify the curve.
        Invoke("ModifyCurve", 5.0f);
    }    void ModifyCurve()
    {
        // Add a key to the current curve.
        ourCurve.AddKey(0.5f, 0.0f);        // Apply the changed curve.
        emissionModule.rate = new ParticleSystem.MinMaxCurve(scalar, ourCurve);
    }
}
```

```csharp
using UnityEngine;// This example shows using 2 curves to drive the rate.
public class TwoCurveRateExample : MonoBehaviour
{
    ParticleSystem myParticleSystem;
    ParticleSystem.EmissionModule emissionModule;    AnimationCurve ourCurveMin;
    AnimationCurve ourCurveMax;    // We can "scale" the curves with this value. It gets multiplied by the curves.
    public float scalar = 1.0f;    void Start()
    {
        // Get the system and the emission module.
        myParticleSystem = GetComponent<ParticleSystem>();
        emissionModule = myParticleSystem.emission;        // A horizontal straight line at value 1.
        ourCurveMin = new AnimationCurve();
        ourCurveMin.AddKey(0.0f, 1.0f);
        ourCurveMin.AddKey(1.0f, 1.0f);        // A horizontal straight line at value 0.5.
        ourCurveMax = new AnimationCurve();
        ourCurveMax.AddKey(0.0f, 0.5f);
        ourCurveMax.AddKey(1.0f, 0.5f);        // Apply the curves.
        emissionModule.rate = new ParticleSystem.MinMaxCurve(scalar, ourCurveMin, ourCurveMax);        // In 5 seconds we will modify the curve.
        Invoke("ModifyCurve", 5.0f);
    }    void ModifyCurve()
    {
        // Create a "pinch" point.
        ourCurveMin.AddKey(0.5f, 0.7f);
        ourCurveMax.AddKey(0.5f, 0.6f);        // Apply the changed curve.
        emissionModule.rate = new ParticleSystem.MinMaxCurve(scalar, ourCurveMin, ourCurveMax);
    }
}
```
