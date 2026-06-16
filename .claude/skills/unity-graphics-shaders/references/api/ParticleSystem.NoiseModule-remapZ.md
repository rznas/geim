<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.NoiseModule-remapZ.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Define how the noise values are remapped on the z-axis, when using the ParticleSystem.NoiseModule.separateAxes option.

Additional resources: MinMaxCurve.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValueRemapX = 1.0f;
    public float hSliderValueRemapY = 1.0f;
    public float hSliderValueRemapZ = 1.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var noise = ps.noise;
        noise.enabled = true;
        noise.remapEnabled = true;
        noise.separateAxes = true;        // An unusual curve to show off different noise behavior (See curve preview in the Inspector)
        AnimationCurve ourCurve;
        ourCurve = new AnimationCurve();
        ourCurve.AddKey(0.0f, 0.0f);
        ourCurve.AddKey(0.45f, -0.75f);
        ourCurve.AddKey(0.50f, 1.0f);
        ourCurve.AddKey(0.55f, -0.75f);
        ourCurve.AddKey(1.0f, 0.0f);        // Apply the curve
        noise.remapX = new ParticleSystem.MinMaxCurve(1.0f, ourCurve);
        noise.remapY = new ParticleSystem.MinMaxCurve(1.0f, ourCurve);
        noise.remapZ = new ParticleSystem.MinMaxCurve(1.0f, ourCurve);        // Set color by speed, to demonstrate the effects of the Noise Module
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
        noise.remapXMultiplier = hSliderValueRemapX;
        noise.remapYMultiplier = hSliderValueRemapY;
        noise.remapZMultiplier = hSliderValueRemapZ;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 40, 100, 30), "Remap X");
        GUI.Label(new Rect(25, 80, 100, 30), "Remap Y");
        GUI.Label(new Rect(25, 120, 100, 30), "Remap Z");        hSliderValueRemapX = GUI.HorizontalSlider(new Rect(135, 45, 100, 30), hSliderValueRemapX, 0.0f, 5.0f);
        hSliderValueRemapY = GUI.HorizontalSlider(new Rect(135, 85, 100, 30), hSliderValueRemapY, 0.0f, 5.0f);
        hSliderValueRemapZ = GUI.HorizontalSlider(new Rect(135, 125, 100, 30), hSliderValueRemapZ, 0.0f, 5.0f);
    }
}
```
