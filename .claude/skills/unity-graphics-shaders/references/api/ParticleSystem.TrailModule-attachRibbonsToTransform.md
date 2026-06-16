<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TrailModule-attachRibbonsToTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Adds an extra position to each ribbon, connecting it to the location of the Transform Component.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool attachRibbonsToTransform = true;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startColor = new ParticleSystem.MinMaxGradient(Color.red, Color.yellow);
        main.startSize = new ParticleSystem.MinMaxCurve(0.01f, 1.0f);
        main.startLifetime = 1.5f;        var shape = ps.shape;
        shape.radius = 2.0f;
        shape.radiusThickness = 0.0f;        var trails = ps.trails;
        trails.enabled = true;
        trails.mode = ParticleSystemTrailMode.Ribbon;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.trailMaterial = new Material(Shader.Find("Sprites/Default"));
    }    void Update()
    {
        var trails = ps.trails;
        trails.attachRibbonsToTransform = attachRibbonsToTransform;
    }    void OnGUI()
    {
        attachRibbonsToTransform = GUI.Toggle(new Rect(25, 25, 200, 30), attachRibbonsToTransform, "Attach Ribbons To Transform");
    }
}
```
