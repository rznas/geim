<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TrailModule-lifetimeMultiplier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A multiplier for ParticleSystem.TrailModule.lifetime.

This is more efficient than accessing the whole curve, if you only want to change the overall lifetime multiplier.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValueLifetime = 1.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startColor = new ParticleSystem.MinMaxGradient(Color.red, Color.yellow);
        main.startSize = 0.1f;
        main.startLifetime = 1.5f;        var trails = ps.trails;
        trails.enabled = true;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.trailMaterial = new Material(Shader.Find("Sprites/Default"));
    }    void Update()
    {
        var trails = ps.trails;
        trails.lifetimeMultiplier = hSliderValueLifetime;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 40, 100, 30), "Lifetime");        hSliderValueLifetime = GUI.HorizontalSlider(new Rect(95, 45, 100, 30), hSliderValueLifetime, 0.0f, 1.0f);
    }
}
```
