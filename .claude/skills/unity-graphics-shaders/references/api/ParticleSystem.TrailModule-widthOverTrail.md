<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TrailModule-widthOverTrail.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The curve describing the width of each trail point.

Additional resources: MinMaxCurve.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    private AnimationCurve curve = new AnimationCurve();
    public bool widthOverTrail = true;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startColor = new ParticleSystem.MinMaxGradient(Color.red, Color.yellow);
        main.startSize = new ParticleSystem.MinMaxCurve(0.01f, 1.0f);
        main.startLifetime = 1.5f;        var trails = ps.trails;
        trails.enabled = true;        curve.AddKey(0.0f, 1.0f);
        curve.AddKey(1.0f, 0.0f);        var psr = GetComponent<ParticleSystemRenderer>();
        psr.trailMaterial = new Material(Shader.Find("Sprites/Default"));
    }    void Update()
    {
        var trails = ps.trails;
        if (widthOverTrail)
            trails.widthOverTrail = new ParticleSystem.MinMaxCurve(1.0f, curve);
        else
            trails.widthOverTrail = 1.0f;
    }    void OnGUI()
    {
        widthOverTrail = GUI.Toggle(new Rect(25, 25, 200, 30), widthOverTrail, "Width over Trail");
    }
}
```
