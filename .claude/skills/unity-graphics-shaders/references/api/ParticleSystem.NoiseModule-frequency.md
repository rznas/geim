<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.NoiseModule-frequency.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Low values create soft, smooth noise, and high values create rapidly changing noise.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool moduleEnabled = true;
    public float hSliderValueStrength = 1.0f;
    public float hSliderValueFrequency = 1.0f;
    public float hSliderValueScrollSpeed = 0.0f;
    public bool damping = true;
    public ParticleSystemNoiseQuality quality = ParticleSystemNoiseQuality.High;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        // Set color by speed, to demonstrate the effects of the Noise Module
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
        noise.enabled = moduleEnabled;
        noise.strengthMultiplier = hSliderValueStrength;
        noise.frequency = hSliderValueFrequency;
        noise.scrollSpeedMultiplier = hSliderValueScrollSpeed;
        noise.damping = damping;
        noise.quality = quality;
    }    void OnGUI()
    {
        moduleEnabled = GUI.Toggle(new Rect(25, 45, 200, 30), moduleEnabled, "Enabled");        GUI.Label(new Rect(25, 80, 100, 30), "Strength");
        GUI.Label(new Rect(25, 120, 100, 30), "Frequency");
        GUI.Label(new Rect(25, 160, 100, 30), "Scroll Speed");        hSliderValueStrength = GUI.HorizontalSlider(new Rect(135, 85, 100, 30), hSliderValueStrength, 0.0f, 5.0f);
        hSliderValueFrequency = GUI.HorizontalSlider(new Rect(135, 125, 100, 30), hSliderValueFrequency, 0.0f, 5.0f);
        hSliderValueScrollSpeed = GUI.HorizontalSlider(new Rect(135, 165, 100, 30), hSliderValueScrollSpeed, 0.0f, 5.0f);        damping = GUI.Toggle(new Rect(25, 205, 200, 30), damping, "Damping");        quality = (ParticleSystemNoiseQuality)GUI.SelectionGrid(new Rect(25, 245, 300, 30), (int)quality, new GUIContent[] { new GUIContent("Low"), new GUIContent("Medium"), new GUIContent("High") }, 3);
    }
}
```
