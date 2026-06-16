<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.NoiseModule-strengthZ.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Define the strength of the effect on the z-axis, when using the ParticleSystem.NoiseModule.separateAxes option.

Additional resources: MinMaxCurve.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValueStrengthX = 1.0f;
    public float hSliderValueStrengthY = 1.0f;
    public float hSliderValueStrengthZ = 1.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var noise = ps.noise;
        noise.enabled = true;
        noise.separateAxes = true;        // Set color by speed, to demonstrate the effects of the Noise Module
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
        noise.strengthX = hSliderValueStrengthX;
        noise.strengthY = hSliderValueStrengthY;
        noise.strengthZ = hSliderValueStrengthZ;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 40, 100, 30), "Strength X");
        GUI.Label(new Rect(25, 80, 100, 30), "Strength Y");
        GUI.Label(new Rect(25, 120, 100, 30), "Strength Z");        hSliderValueStrengthX = GUI.HorizontalSlider(new Rect(135, 45, 100, 30), hSliderValueStrengthX, 0.0f, 5.0f);
        hSliderValueStrengthY = GUI.HorizontalSlider(new Rect(135, 85, 100, 30), hSliderValueStrengthY, 0.0f, 5.0f);
        hSliderValueStrengthZ = GUI.HorizontalSlider(new Rect(135, 125, 100, 30), hSliderValueStrengthZ, 0.0f, 5.0f);
    }
}
```
