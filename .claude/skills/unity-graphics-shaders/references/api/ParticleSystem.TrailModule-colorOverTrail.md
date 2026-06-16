<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TrailModule-colorOverTrail.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The gradient that controls the trail colors over the length of the trail.

Additional resources: MinMaxGradient.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    private Gradient gradient = new Gradient();
    public bool swapColors = true;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startSize = 0.1f;
        main.startLifetime = 1.5f;        var trails = ps.trails;
        trails.enabled = true;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.trailMaterial = new Material(Shader.Find("Sprites/Default"));
    }    void Update()
    {
        var trails = ps.trails;
        if (swapColors)
        {
            gradient.SetKeys(
                new GradientColorKey[] { new GradientColorKey(Color.blue, 0.0f), new GradientColorKey(Color.green, 1.0f) },
                new GradientAlphaKey[] { new GradientAlphaKey(1.0f, 0.0f), new GradientAlphaKey(1.0f, 1.0f) }
            );
        }
        else
        {
            gradient.SetKeys(
                new GradientColorKey[] { new GradientColorKey(Color.green, 0.0f), new GradientColorKey(Color.blue, 1.0f) },
                new GradientAlphaKey[] { new GradientAlphaKey(1.0f, 0.0f), new GradientAlphaKey(1.0f, 1.0f) }
            );
        }        trails.colorOverTrail = gradient;
    }    void OnGUI()
    {
        swapColors = GUI.Toggle(new Rect(25, 25, 200, 30), swapColors, "Swap Trail Colors");
    }
}
```
