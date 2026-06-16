<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TrailModule-enabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies whether the TrailModule is enabled or disabled.

Additional resources: ParticleSystem.trails.

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
