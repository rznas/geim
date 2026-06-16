<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.NoiseModule-remap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Define how the noise values are remapped.

Additional resources: MinMaxCurve.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValueRemap = 1.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var noise = ps.noise;
        noise.enabled = true;
        noise.remapEnabled = true;        // An unusual curve to show off different noise behavior (See curve preview in the Inspector)
        AnimationCurve ourCurve;
        ourCurve = new AnimationCurve();
        ourCurve.AddKey(0.0f, 0.0f);
        ourCurve.AddKey(0.45f, -0.75f);
        ourCurve.AddKey(0.50f, 1.0f);
        ourCurve.AddKey(0.55f, -0.75f);
        ourCurve.AddKey(1.0f, 0.0f);
        noise.remap = new ParticleSystem.MinMaxCurve(1.0f, ourCurve);        // Set color by speed, to demonstrate the effects of the Noise Module
        var colorBySpeed = ps.colorBySpeed;
        colorBySpeed.enabled = true;        Gradient gradient = new Gradient();
        gradient.SetKeys(
            new GradientColorKey[] { new GradientColorKey(Color.green, 0.0f), new GradientColorKey(Color.red, 1.0f) },
            new GradientAlphaKey[] { new GradientAlphaKey(1.0f, 0.0f), new GradientAlphaKey(1.0f, 1.0f) }
        );        colorBySpeed.color = new ParticleSystem.MinMaxGradient(gradient);
        colorBySpeed.range = new Vector2(3.0f, 7.0f);
    }    void Update()
    {
        var noise = ps.noise;
        noise.remapMultiplier = hSliderValueRemap;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 40, 100, 30), "Remap");        hSliderValueRemap = GUI.HorizontalSlider(new Rect(135, 45, 100, 30), hSliderValueRemap, 0.0f, 1.0f);
    }
}
```
