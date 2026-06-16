<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TrailModule-ratio.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Choose what proportion of particles receive a trail.

Use a value between 0 and 1, where 0 doesn't add trails to any particles, and 1 adds trails to every particle.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValueRatio = 1.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startColor = new ParticleSystem.MinMaxGradient(Color.red, Color.yellow);
        main.startSize = 0.1f;        var trails = ps.trails;
        trails.enabled = true;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.trailMaterial = new Material(Shader.Find("Sprites/Default"));
    }    void Update()
    {
        var trails = ps.trails;
        trails.ratio = hSliderValueRatio;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 40, 100, 30), "Ratio");        hSliderValueRatio = GUI.HorizontalSlider(new Rect(55, 45, 100, 30), hSliderValueRatio, 0.0f, 1.0f);
    }
}
```
