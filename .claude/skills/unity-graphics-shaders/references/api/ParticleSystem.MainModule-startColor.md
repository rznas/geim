<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-startColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The initial color of particles when the Particle System first spawns them.

Additional resources: MinMaxGradient.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValueR = 0.0F;
    public float hSliderValueG = 0.0F;
    public float hSliderValueB = 0.0F;
    public float hSliderValueA = 1.0F;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
    }    void Update()
    {
        var main = ps.main;
        main.startColor = new Color(hSliderValueR, hSliderValueG, hSliderValueB, hSliderValueA);
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 40, 100, 30), "Red");
        GUI.Label(new Rect(25, 70, 100, 30), "Green");
        GUI.Label(new Rect(25, 100, 100, 30), "Blue");
        GUI.Label(new Rect(25, 130, 100, 30), "Alpha");        hSliderValueR = GUI.HorizontalSlider(new Rect(95, 45, 100, 30), hSliderValueR, 0.0F, 1.0F);
        hSliderValueG = GUI.HorizontalSlider(new Rect(95, 75, 100, 30), hSliderValueG, 0.0F, 1.0F);
        hSliderValueB = GUI.HorizontalSlider(new Rect(95, 105, 100, 30), hSliderValueB, 0.0F, 1.0F);
        hSliderValueA = GUI.HorizontalSlider(new Rect(95, 135, 100, 30), hSliderValueA, 0.0F, 1.0F);
    }
}
```
