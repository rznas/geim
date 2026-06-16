<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.NoiseModule-sizeAmount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How much the noise affects the particle sizes, applied as a multiplier on the size of each particle.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValuePositionAmount = 0.0f;
    public float hSliderValueRotationAmount = 0.0f;
    public float hSliderValueSizeAmount = 0.5f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var noise = ps.noise;
        noise.enabled = true;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.material = new Material(Shader.Find("Sprites/Default"));    // this material renders a square billboard, so we can see the rotation
    }    void Update()
    {
        var noise = ps.noise;
        noise.enabled = enabled;
        noise.positionAmount = hSliderValuePositionAmount;
        noise.rotationAmount = hSliderValueRotationAmount;
        noise.sizeAmount = hSliderValueSizeAmount;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 80, 100, 30), "Position Amount");
        GUI.Label(new Rect(25, 120, 100, 30), "Rotation Amount");
        GUI.Label(new Rect(25, 160, 100, 30), "Size Amount");        hSliderValuePositionAmount = GUI.HorizontalSlider(new Rect(135, 85, 100, 30), hSliderValuePositionAmount, 0.0f, 5.0f);
        hSliderValueRotationAmount = GUI.HorizontalSlider(new Rect(135, 125, 100, 30), hSliderValueRotationAmount, 0.0f, 180.0f);
        hSliderValueSizeAmount = GUI.HorizontalSlider(new Rect(135, 165, 100, 30), hSliderValueSizeAmount, 0.0f, 1.0f);
    }
}
```
