<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TrailModule-minVertexDistance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set the minimum distance each trail can travel before the system adds a new vertex to it.

Smaller values give smoother trails that consist of more vertices. Smoother trails require more memory, and are more performance-intensive to update.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValueDistance = 0.2f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startColor = new ParticleSystem.MinMaxGradient(Color.red, Color.yellow);
        main.startSize = 0.1f;
        main.startLifetime = 2.5f;
        main.gravityModifier = 0.35f;        var trails = ps.trails;
        trails.enabled = true;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.trailMaterial = new Material(Shader.Find("Sprites/Default"));
    }    void Update()
    {
        var trails = ps.trails;
        trails.minVertexDistance = hSliderValueDistance;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 40, 100, 30), "Vertex Distance");        hSliderValueDistance = GUI.HorizontalSlider(new Rect(125, 45, 100, 30), hSliderValueDistance, 0.01f, 1.0f);
    }
}
```
