<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TrailModule-widthOverTrailMultiplier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A multiplier for ParticleSystem.TrailModule.widthOverTrail.

This is more efficient than accessing the whole curve, if you only want to change the overall width multiplier.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool widthOverTrail = true;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startColor = new ParticleSystem.MinMaxGradient(Color.red, Color.yellow);
        main.startSize = new ParticleSystem.MinMaxCurve(0.01f, 1.0f);
        main.startLifetime = 1.5f;        var trails = ps.trails;
        trails.enabled = true;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.trailMaterial = new Material(Shader.Find("Sprites/Default"));
    }    void Update()
    {
        var trails = ps.trails;
        if (widthOverTrail)
            trails.widthOverTrailMultiplier = 0.2f;
        else
            trails.widthOverTrailMultiplier = 1.0f;
    }    void OnGUI()
    {
        widthOverTrail = GUI.Toggle(new Rect(25, 25, 200, 30), widthOverTrail, "Width over Trail");
    }
}
```
