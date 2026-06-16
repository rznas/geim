<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TrailModule-dieWithParticles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies whether trails disappear immediately when their owning particle dies. When false, each trail persists until all its points have naturally expired, based on its lifetime.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool dieWithParticles = true;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startColor = new ParticleSystem.MinMaxGradient(Color.red, Color.yellow);
        main.startSizeMultiplier = 0.1f;
        main.startLifetimeMultiplier = 1.0f;        var trails = ps.trails;
        trails.enabled = true;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.trailMaterial = new Material(Shader.Find("Sprites/Default"));
    }    void Update()
    {
        var trails = ps.trails;
        trails.dieWithParticles = dieWithParticles;
    }    void OnGUI()
    {
        dieWithParticles = GUI.Toggle(new Rect(25, 25, 200, 30), dieWithParticles, "Die With Particles");
    }
}
```
