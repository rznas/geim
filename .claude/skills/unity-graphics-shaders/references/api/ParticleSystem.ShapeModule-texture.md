<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.ShapeModule-texture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies a Texture to tint the particle's start colors.

To tint the particles' start color, the Shape module reads pixels from this Texture on the CPU. This means you must enable the read/write option in the assigned Texture's Import Settings.

To tint particles, the Shape module first stretches the Texture over the shape you specify. Then, when the system emits a particle from a point on the shape, the Shape module uses the color of the Texture at that location as the particle color.

To see how the Texture stretches over the shape, select the Particle System in the Hierarchy view and expand the Shape module. The Scene View visualization of the shape includes the Texture preview.

```csharp
using UnityEditor;
using UnityEngine;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float alphaThreshold = 0.0f;
    public bool colorAffectsParticles = true;
    public bool alphaAffectsParticles = true;
    public bool bilinearFiltering = false;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startSpeed = 0.0f;
        main.startSize = 0.5f;
        main.startLifetime = 1.0f;        var emission = ps.emission;
        emission.rateOverTime = 500.0f;        var shape = ps.shape;
        shape.shapeType = ParticleSystemShapeType.Circle;
        shape.radius = 6.0f;
        shape.texture = AssetDatabase.GetBuiltinExtraResource<Texture2D>("Default-Particle.psd");
    }    void Update()
    {
        var shape = ps.shape;
        shape.textureClipThreshold = alphaThreshold;
        shape.textureColorAffectsParticles = colorAffectsParticles;
        shape.textureAlphaAffectsParticles = alphaAffectsParticles;
        shape.textureBilinearFiltering = bilinearFiltering;
    }    void OnGUI()
    {
        float y = 120.0f;
        float spacing = 40.0f;        GUI.Label(new Rect(25, y, 140, 30), "Alpha Threshold");
        alphaThreshold = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), alphaThreshold, 0.0f, 1.0f);
        y += spacing;        colorAffectsParticles = GUI.Toggle(new Rect(25, y + 5, 200, 30), colorAffectsParticles, "Color Affects Particles");
        y += spacing;        alphaAffectsParticles = GUI.Toggle(new Rect(25, y + 5, 200, 30), alphaAffectsParticles, "Alpha Affects Particles");
        y += spacing;        bilinearFiltering = GUI.Toggle(new Rect(25, y + 5, 200, 30), bilinearFiltering, "Bilinear Filtering");
        y += spacing;
    }
}
```
