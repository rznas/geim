<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MinMaxGradient.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for a Min-Max Gradient.

This contains two Gradients, and returns a Color based on ParticleSystem.MinMaxGradient.mode. Depending on the mode, this may return the value randomized. Gradients are edited via the ParticleSystem Inspector once a ParticleSystemGradientMode requiring them has been selected. Some modes do not require gradients, only colors. Additional resources: ParticleSystem.

```csharp
using UnityEngine;// This example shows setting a constant color value.
public class ConstantColorExample : MonoBehaviour
{
    ParticleSystem myParticleSystem;
    ParticleSystem.ColorOverLifetimeModule colorModule;    void Start()
    {
        // Get the system and the color module.
        myParticleSystem = GetComponent<ParticleSystem>();
        colorModule = myParticleSystem.colorOverLifetime;        GetValue();
        SetValue();
    }    void GetValue()
    {
        print("The constant color is " + colorModule.color.color);
    }    void SetValue()
    {
        colorModule.color = Color.red;
    }
}
```

```csharp
using UnityEngine;// This example shows using 2 colors to drive the color over lifetime.
public class TwoConstantColorsExample : MonoBehaviour
{
    ParticleSystem myParticleSystem;
    ParticleSystem.ColorOverLifetimeModule colorModule;    void Start()
    {
        // Get the system and the color module.
        myParticleSystem = GetComponent<ParticleSystem>();
        colorModule = myParticleSystem.colorOverLifetime;        GetValue();
        SetValue();
    }    void GetValue()
    {
        print(string.Format("The constant values are: min {0} max {1}.", colorModule.color.colorMin, colorModule.color.colorMax));
    }    void SetValue()
    {
        colorModule.color = new ParticleSystem.MinMaxGradient(Color.green, Color.red);
    }
}
```

```csharp
using UnityEngine;// This example shows using a gradient to drive the color over lifetime.
public class GradientColorExample : MonoBehaviour
{
    ParticleSystem myParticleSystem;
    ParticleSystem.ColorOverLifetimeModule colorModule;
    Gradient ourGradient;    void Start()
    {
        // Get the system and the color module.
        myParticleSystem = GetComponent<ParticleSystem>();
        colorModule = myParticleSystem.colorOverLifetime;        // A simple 2 color gradient with a fixed alpha of 1.0f.
        float alpha = 1.0f;
        ourGradient = new Gradient();
        ourGradient.SetKeys(
            new GradientColorKey[] { new GradientColorKey(Color.green, 0.0f), new GradientColorKey(Color.red, 1.0f) },
            new GradientAlphaKey[] { new GradientAlphaKey(alpha, 0.0f), new GradientAlphaKey(alpha, 1.0f) }
        );        // Apply the gradient.
        colorModule.color = ourGradient;        // In 5 seconds we will modify the gradient.
        Invoke("ModifyGradient", 5.0f);
    }    void ModifyGradient()
    {
        // Reduce the alpha
        float alpha = 0.5f;
        ourGradient.SetKeys(
            new GradientColorKey[] { new GradientColorKey(Color.green, 0.0f), new GradientColorKey(Color.red, 1.0f) },
            new GradientAlphaKey[] { new GradientAlphaKey(alpha, 0.0f), new GradientAlphaKey(alpha, 1.0f) }
        );        // Apply the changed gradient.
        colorModule.color = ourGradient;
    }
}
```

```csharp
using UnityEngine;// This example shows using 2 gradients to drive the color over lifetime.
public class TwoGradientColorExample : MonoBehaviour
{
    ParticleSystem myParticleSystem;
    ParticleSystem.ColorOverLifetimeModule colorModule;    Gradient ourGradientMin;
    Gradient ourGradientMax;    void Start()
    {
        // Get the system and the emission module.
        myParticleSystem = GetComponent<ParticleSystem>();
        colorModule = myParticleSystem.colorOverLifetime;        // A simple 2 color gradient with a fixed alpha of 1.0f.
        float alpha1 = 1.0f;
        ourGradientMin = new Gradient();
        ourGradientMin.SetKeys(
            new GradientColorKey[] { new GradientColorKey(Color.green, 0.0f), new GradientColorKey(Color.red, 1.0f) },
            new GradientAlphaKey[] { new GradientAlphaKey(alpha1, 0.0f), new GradientAlphaKey(alpha1, 1.0f) }
        );        // A simple 2 color gradient with a fixed alpha of 0.0f.
        float alpha2 = 0.0f;
        ourGradientMax = new Gradient();
        ourGradientMax.SetKeys(
            new GradientColorKey[] { new GradientColorKey(Color.green, 0.0f), new GradientColorKey(Color.red, 1.0f) },
            new GradientAlphaKey[] { new GradientAlphaKey(alpha2, 0.0f), new GradientAlphaKey(alpha2, 1.0f) }
        );        // Apply the gradients.
        colorModule.color = new ParticleSystem.MinMaxGradient(ourGradientMin, ourGradientMax);        // In 5 seconds we will modify the gradient.
        Invoke("ModifyGradient", 5.0f);
    }    void ModifyGradient()
    {
        // Reduce the alpha
        float alpha = 0.5f;
        ourGradientMin.SetKeys(
            new GradientColorKey[] { new GradientColorKey(Color.green, 0.0f), new GradientColorKey(Color.red, 1.0f) },
            new GradientAlphaKey[] { new GradientAlphaKey(alpha, 0.0f), new GradientAlphaKey(alpha, 1.0f) }
        );        // Apply the changed gradients.
        colorModule.color = new ParticleSystem.MinMaxGradient(ourGradientMin, ourGradientMax);
    }
}
```

```csharp
using UnityEngine;// This example shows how to retrieve existing color and alpha keys from a MinMaxGradient
public class ReadGradientExample : MonoBehaviour
{
    void Start()
    {
        // Get the system and the color module.
        var myParticleSystem = GetComponent<ParticleSystem>();
        var colorModule = myParticleSystem.colorOverLifetime;        // Get the gradient (assuming the MinMaxGradient is in Gradient mode)
        Gradient gradient = colorModule.color.gradient;        // Get the keys
        GradientColorKey[] colorKeys = gradient.colorKeys;
        GradientAlphaKey[] alphaKeys = gradient.alphaKeys;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| color | Set a constant color. |
| colorMax | Set a constant color for the upper bound. |
| colorMin | Set a constant color for the lower bound. |
| gradient | Set the gradient. |
| gradientMax | Set a gradient for the upper bound. |
| gradientMin | Set a gradient for the lower bound. |
| mode | Set the mode that the Min-Max Gradient uses to evaluate colors. |

### Constructors

| Constructor | Description |
| --- | --- |
| ParticleSystem.MinMaxGradient | A single constant color for the entire gradient. |

### Public Methods

| Method | Description |
| --- | --- |
| Evaluate | Manually query the gradient to calculate colors based on what mode it is in. |
