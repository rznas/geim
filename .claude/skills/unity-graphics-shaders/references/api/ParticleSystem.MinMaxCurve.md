<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MinMaxCurve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for a Min-Max Curve.

Min-Max Curve. describes functions which take a value between a minimum and maximum limit and return a value based on ParticleSystem.MinMaxCurve.mode. Depending on the mode, this may return randomized values. For modes that require curves, the value returned is dependent on one or two curves designed in the ParticleSystem Inspector, that can be evaluated to a single value between -n and n, where n is a constant also set in the Inspector. See ParticleSystemCurveMode for more information.

Additional resources: ParticleSystem.

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
        print("The constant value is " + emissionModule.rateOverTime.constant);
    }    void SetValue()
    {
        emissionModule.rateOverTime = 10.0f;
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
        print(string.Format("The constant values are: min {0} max {1}.", emissionModule.rateOverTime.constantMin, emissionModule.rateOverTime.constantMax));
    }    void SetValue()
    {
        emissionModule.rateOverTime = new ParticleSystem.MinMaxCurve(0.0f, 10.0f);
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
        emissionModule.rateOverTime = new ParticleSystem.MinMaxCurve(scalar, ourCurve);        // In 5 seconds we will modify the curve.
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
        emissionModule.rateOverTime = new ParticleSystem.MinMaxCurve(scalar, ourCurveMin, ourCurveMax);        // In 5 seconds we will modify the curve.
        Invoke("ModifyCurve", 5.0f);
    }    void ModifyCurve()
    {
        // Create a "pinch" point.
        ourCurveMin.AddKey(0.5f, 0.7f);
        ourCurveMax.AddKey(0.5f, 0.6f);        // Apply the changed curve.
        emissionModule.rateOverTime = new ParticleSystem.MinMaxCurve(scalar, ourCurveMin, ourCurveMax);
    }
}
```

```csharp
using UnityEngine;// This example shows how to retrieve existing keys from a MinMaxCurve
public class ReadCurveExample : MonoBehaviour
{
    void Start()
    {
        // Get the system and the emission module.
        var myParticleSystem = GetComponent<ParticleSystem>();
        var emissionModule = myParticleSystem.emission;        // Get the curve (assuming the MinMaxCurve is in Curve mode)
        AnimationCurve curve = emissionModule.rateOverTime.curve;        // Get the keys
        Keyframe[] keys = curve.keys;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| constant | Set the constant value. |
| constantMax | Set a constant for the upper bound. |
| constantMin | Set a constant for the lower bound. |
| curve | Set the curve. |
| curveMax | Set a curve for the upper bound. |
| curveMin | Set a curve for the lower bound. |
| curveMultiplier | Set a multiplier to apply to the curves. |
| mode | Set the mode that the min-max curve uses to evaluate values. |

### Constructors

| Constructor | Description |
| --- | --- |
| ParticleSystem.MinMaxCurve | A single constant value for the entire curve. |

### Public Methods

| Method | Description |
| --- | --- |
| Evaluate | Manually query the curve to calculate values based on what mode it is in. |
