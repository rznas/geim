<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TrailModule-sizeAffectsLifetime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set whether the particle size acts as a multiplier on top of the trail lifetime.

Useful for making larger particles have longer trails.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool sizeAffectsLifetime = true;    void Start()
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
        trails.sizeAffectsLifetime = sizeAffectsLifetime;
    }    void OnGUI()
    {
        sizeAffectsLifetime = GUI.Toggle(new Rect(25, 25, 200, 30), sizeAffectsLifetime, "Size affects lifetime");
    }
}
```
